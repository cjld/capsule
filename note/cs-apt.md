# How do I find the package that provides a file?
$ dpkg -S /bin/ls
coreutils: /bin/ls

# using apt-file to find unexist file
$ apt-file find kwallet.h
kdelibs5-dev: /usr/include/kwallet.h
libkf5wallet-dev: /usr/include/KF5/KWallet/kwallet.h
