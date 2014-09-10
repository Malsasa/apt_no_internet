#!/bin/bash
# skrip untuk membuat list yang akan di download
# jalankan skrip ini pada komputer yang akan di update namun tidak terhubung internet
clear

# setting repository sesuai kebutuhan
sudo software-properties-kde

# membuat daftar file untuk di download dan nama lokalnya
apt-get --print-uris --yes update | grep ^\' > wget_update.lst

# edit daftar file agar sesuai dengan aplikasi web downloader (wget)
# replace '  (tanda petik diikuti spasi) dengan karakter kosong
# replace 0 : (nol diikuti spasi diikuti titik-dua) dengan karakter kosong
# replace 0 (nol) dengan karakter kosong
# untuk raspbian, replace bz2 dengan gz (sesuai format yang tersedia di repository)
kate wget_update.lst
