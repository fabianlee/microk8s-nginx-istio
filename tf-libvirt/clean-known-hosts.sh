#!/bin/bash

for octet in $(seq 210 212); do
  ssh-keygen -f "$HOME/.ssh/known_hosts" -R 192.168.122.$octet
done
