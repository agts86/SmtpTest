#!/bin/bash

FilePath="$(dirname "$0")/selfsigned-certificate.cer"
echo "$FilePath"
os=`cat /etc/os-release`
echo $os
if [[ "$os" == *CentOS* ]] || [[ "$os" == *centos* ]]; then
    sudo cp "$FilePath" /etc/pki/ca-trust/source/anchors/
    sudo update-ca-trust extract
elif [[ "$os" == *ubuntu* ]]; then
    sudo cp "$FilePath" /usr/local/share/ca-certificates/
    sudo update-ca-certificates
fi

