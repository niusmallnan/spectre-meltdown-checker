#!/bin/bash

STAMP=./.init_done

if [ ! -e $STAMP ]; then
    rm -rf /var/log && ln -s /host/var/log /var/log
    ln -s /host/dev/cpu /dev/cpu
    rm -rf /boot && ln -s /host/boot /boot
    touch $STAMP
fi

./spectre-meltdown-checker.sh
