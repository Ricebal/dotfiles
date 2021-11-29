#!/bin/bash
wal -i $1 -n
nitrogen --head=0 --save-auto $1
nitrogen --head=1 --save-auto $1