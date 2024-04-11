#!/bin/bash

FilePath="$(dirname "$0")/selfsigned-certificate.cer"
echo "$FilePath"
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain "$FilePath"

