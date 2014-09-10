#!/bin/bash
# skrip untuk menginstal file *.deb
# jalankan skrip ini pada komputer yang akan di instal namun tidak terhubung internet
# pastikan folder cache (hasil install_step_2.sh) berada satu folder dengan skrip ini
clear

packages=$(cat step_1_deb.lst)
cd ./cache
sudo cp -arvf ./*.deb /var/cache/apt/archives
sudo apt-get install $packages