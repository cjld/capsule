# todo
kernel debug info
multithread
lock perf
[kernel debugging](https://wiki.ubuntu.com/Kernel/Debugging)

# perf stat
perf stat -B dd if=/dev/zero of=/dev/null count=1000000
-a      system wide
-e rNNN         raw event
`-e syscalls:*`   tracepoint, syscall
-C              spec CPU number


# perf record
-F x        specify a sample rate
-g          record call graph
-e cycles:pp        precise level, see perf-list man page

# tracepoint
/sys/kernel/debug/tracing/events/

# learn about cpu event
<http://stackoverflow.com/questions/22165299/what-are-stalled-cycles-frontend-and-stalled-cycles-backend-in-perf-stat-resul>


