#!/bin/bash

cd ~/suckless/dmenu
make clean
sudo rm config.h
sudo make && sudo make install
