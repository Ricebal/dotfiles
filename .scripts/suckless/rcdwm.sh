#!/bin/bash

cd ~/suckless/dwm
make clean
sudo rm config.h
sudo make && sudo make install
