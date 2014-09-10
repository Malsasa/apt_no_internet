#!/bin/bash
# skrip untuk mendownload file *.deb dari repository melalui web
# jalankan skrip ini pada komputer terhubung internet
# jika melalui windows jalankan skrip ini di lingkungan cygwin
# pastikan file wget_install.lst (hasil step_1.sh) berada satu folder dengan skrip ini
clear

mkdir -v ./cache
wget --input-file wget_install.lst
mv -vf ./*.deb ./cache/