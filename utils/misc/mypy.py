#!/usr/bin/python2

import commands
import sys
import os

cmd = commands.getoutput
def cmdp(s):
    print(s)
    return cmd(s)

for line in sys.stdin:
    line = line.strip()
    print(eval(sys.argv[1]))
