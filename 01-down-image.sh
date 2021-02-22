#!/bin/bash

IP=192.168.1.3
HTTP_PROXY=http://192.168.1.3:1001
HTTPS_PROXY=http://192.168.1.3:1001
NO_PROXY="192.168.0.0/16,127.0.0.1,localhost"

while read line
do

    echo $line
    podman pull $line 

done < image-list.txt



