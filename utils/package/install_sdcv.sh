#!/bin/bash
sudo apt-get install sdcv

source ../ss/checkss.sh

set -e
#dict_url='http://abloz.com/huzheng/stardict-dic/dict.org/stardict-dictd_www.dict.org_gcide-2.4.2.tar.bz2'
dict_url='https://web.archive.org/web/20140917131745/http://abloz.com/huzheng/stardict-dic/dict.org/stardict-dictd_www.dict.org_gcide-2.4.2.tar.bz2'
dict_file="/tmp/"$(basename $dict_url)
#tsocks wget $dict_url $dict_file
if ! [ -f $dict_file ]; then
    curl -L $dict_url > $dict_file
fi

sudo mkdir -p /usr/share/stardict/dic
sudo tar -xvjf $dict_file -C /usr/share/stardict/dic
