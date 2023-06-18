#!/bin/bash

mkdir -p ciecwierzinit/dev
mkdir -p ciecwierzinit/bin

sudo mknod ciecwierzinit/dev/tty c 5 0
sudo mknod ciecwierzinit/dev/console c 5 1

