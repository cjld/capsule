# pkg-config
`pkg-config opencv --cflags --libs` to see flags

# socket
```
    // get origin port and ip after redirect
    getsockopt(fd, SOL_IPV6, IP6T_SO_ORIGINAL_DST, destaddr, &socklen);
    getsockopt(fd, SOL_IP, SO_ORIGINAL_DST, destaddr, &socklen);
```
