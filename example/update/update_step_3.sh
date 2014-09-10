#!/bin/bash
# skrip untuk menginstal file index
# jalankan skrip ini pada komputer yang akan di update namun tidak terhubung internet
# pastikan folder cache (hasil update_step_2.sh) berada satu folder dengan skrip ini
clear

# pastikan komputer yang akan di update sudah terinstal paket apt-xapian-index
# cek lewat terminal "dpkg -l | grep apt-xapian-index
# jika belum, instal terlebih dahulu paket apt-xapian-index sebelum menjalankan skrip ini
# gunakan skrip di folder "install" untuk mendownload file *.deb instalasi paket apt-xapian-index

cd ./cache
sudo rm -vf /var/lib/apt/lists/*
sudo cp -arvf ./* /var/lib/apt/lists/
sudo update-apt-xapian-index -f