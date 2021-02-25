#!/bin/bash

export IP=192.168.1.3
export HTTP_PROXY=http://192.168.1.3:1001
export HTTPS_PROXY=http://192.168.1.3:1001
export NO_PROXY="192.168.0.0/16,127.0.0.1,localhost"

while read line
do

    echo $line
    podman pull $line 

done < image-list.txt



