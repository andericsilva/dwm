#!/bin/bash
sudo apt remove dwm -y
sudo apt install acpi alarm-clock-applet build-essential dwm libx11-dev libxft-dev libxinerama-dev lxtask nitrogen pcmanfm suckless-tools xfce4-terminal -y
sudo make clean install
sudo cp dwmstart /usr/share/xsessions/
sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
