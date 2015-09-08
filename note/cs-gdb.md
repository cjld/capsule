# non-stop mode
# If using the CLI, pagination breaks non-stop.
set pagination off
# Finally, turn it on!
set non-stop on
continue -a         continue all threads
interrupt -a        interrupt all threads



# gdb - list of all function calls made in an application
<http://stackoverflow.com/questions/9549693/gdb-list-of-all-function-calls-made-in-an-application>
```
(gdb) set logging on     # collect trace in gdb.txt
(gdb) set confirm off    # you wouldn't want to confirm every one of them
(gdb) rbreak .           # set a breakpoint on each function
```

# gdb multi-thread

set scheduler-locking [on|off]      # run single thread or not
show scheduler-locking

break *linespec* thread *threadno* 
break *linespec* thread *threadno* if …

info threads        # show all threads info
threads *threadno*  # switch to thread

# Examining the Symbol Table

info address symbol
info symbol addr
ptype typename

# Exam frame

frame n     # switch frame
f n     
up n        # move up
dowm n      # mvoe down
info frame  # show frame info
info args   # show args
info local  # show local value
info catch

# watch

watch expr
rwatch value    # read watch
awatch          # read/write watch
enable/disable  # enable/disable a breakpoint

# cheat sheet
<http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf>
