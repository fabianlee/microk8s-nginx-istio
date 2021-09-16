#!/bin/bash

for h in microk8s.local microk8s-secondary.local; do
  nslookup -timeout=1 $h
  if [ $? -ne 0 ]; then
    echo "WARN are you sure $h is DNS resolvable? did you add it to /etc/hosts?"
    #exit 3
  fi
done

curlopt="-k --fail --connect-timeout 3 --retry 0"
while [ 1==1 ]; do 
  timestamp=$(date +"%D %T")
  echo ""
  echo "$timestamp"
  curl $curlopt https://microk8s.local/hello
  curl $curlopt https://microk8s-secondary.local/hello
  sleep 4
done
