#!/bin/bash

cd ~/suckless/st
make clean
sudo rm config.h
sudo make && sudo make install
