#!/bin/bash

cd ~/suckless/dwmblocks
make clean
sudo rm blocks.h
sudo make && sudo make install
