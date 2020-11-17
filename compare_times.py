#!/usr/bin/env python3

from collections import OrderedDict
import csv
import math
import sys

def read_times(filename):
    times = OrderedDict()
    with open(filename) as file:
        for row in csv.DictReader(file):
            times[row['test_name']] = {
                'mean_log': float(row['mean_log_duration']),
                'variance_log': float(row['variance_log_duration'])
            }
    return times

if __name__ == '__main__':
    (_, old_file, new_file) = sys.argv
    old_times = read_times(old_file)
    new_times = read_times(new_file)
    for test_name, time in old_times.items():
        new_time = new_times[test_name]
        speedup_string = test_name + ': '

        mean_speedup = math.expm1(time['mean_log'] - new_time['mean_log'])
        speedup_string += str(abs(mean_speedup * 100)) + '%'
        speedup_string += ' faster' if mean_speedup > 0 else ' slower'

        variance_log_sum = time['variance_log'] + new_time['variance_log']
        variance_speedup = math.expm1(math.sqrt(variance_log_sum))
        speedup_string += ' (+/- ' + str(variance_speedup * 100) + ' %)'

        print(speedup_string)