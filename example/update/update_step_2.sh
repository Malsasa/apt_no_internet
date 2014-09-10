#!/bin/bash
# skrip untuk mendownload file index dari repository melalui web
# jalankan skrip ini pada komputer terhubung internet
# jika melalui windows jalankan skrip ini di lingkungan cygwin
# pastikan file wget_update.lst (hasil update_step_1.sh) berada satu folder dengan skrip ini
clear

mkdir -v ./process
mkdir -v ./cache

for i in `cat wget_update.lst`; do
  wget $(echo $i | cut -d\' -f2)
  
  archive_name=$(echo *.bz2)
  # khusus raspbian
  # archive_name=$(echo *.gz)
  mv -vf ./$archive_name ./process/$archive_name
  cd ./process
  bzip2 -dvf ./$archive_name
  # khusus raspbian
  # gunzip -vf ./$archive_name
  rm -vf ./$archive_name
  
  file_name=$(echo ./*)
  cd ..
  mv -vf ./process/$file_name ./cache/$(echo $i | cut -d\' -f3)
  rm -vf ./process/*
done