# ssh forwarding
<http://dzmailbox.blog.163.com/blog/static/120534385201232642637847/>
## pub:19999 -> localhost:22
ssh -R 19999:localhost:22 user@pub.server.net
## localhost:8889 -> mystation:8888
ssh -L 8889:localhost:8888 mystation
## sockproxy localhost:8889 -> mystation
ssh -D localhost:8889 mystation
`ssh -f -N` for running in background

# proxychains
proxychains
<https://wiki.archlinux.org/index.php/Proxy_settings>
