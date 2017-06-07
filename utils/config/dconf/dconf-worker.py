#!/usr/bin/python

import json
import os
import sys

ap = json.loads(open("./dconf-list.json",'r').read())
print 'settings:', ap

def print_help():
    print "usage: dconf-worker.py [set|get|reset] [all|app-list]"
    sys.exit()

if len(sys.argv) <= 2:
    print_help()

def myrunner(cmd):
    print "running '%s'"%cmd
    rt = os.system(cmd)
    print "return %s"%rt

def config(app, cmd):
    global ap
    os.system("mkdir -p %s"%app)
    keys = ap[app]
    for i,key in enumerate(keys):
        if cmd=='set':
            myrunner("dconf load %s < %s/cfg%s.dconf"%(key, app,i)) 
        elif cmd=='get':
            myrunner("dconf dump %s > %s/cfg%s.dconf"%(key, app,i)) 
        elif cmd=='reset':
            myrunner("dconf reset -f %s "%key) 
        else:
            print_help()


cmd = sys.argv[1]
apps = ap.keys() if sys.argv[2]=='all' else sys.argv[2:]
for app in apps:
    config(app, cmd)
