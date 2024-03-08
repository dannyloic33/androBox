#!/bin/sh

export PATH=/data/data/com.termux/files/usr/bin
unset LD_LIBRARY_PATH

cachedir=$HOME/.local/cache

mkdir -p $cachedir


     rm -rf $cachedir/box64_$1.tar.xz

     rm -rf $cachedir/box86_$1.tar.xz
 
 curl --silent https://raw.githubusercontent.com/FEX-Emu/FEX/main/Scripts/InstallFEX.py --output /tmp/InstallFEX.py && python3 /tmp/InstallFEX.py && rm /tmp/InstallFEX.py

sleep 2
$PREFIX/glibc/opt/WinScripts/restart.sh
