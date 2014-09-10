#!/bin/bash
# skrip untuk membuat list yang akan di download
# jalankan skrip ini pada komputer yang akan di instal namun tidak terhubung internet
# pastikan apt index sudah update melalui "sudo update-apt-xapian-index -f"
clear

# membuat daftar file *.deb untuk di download dari repository
# daftar nama paket ditulis dalam file step_1_deb.lst) dan satu folder dengan skrip ini
packages=$(cat step_1_deb.lst)
apt-get --print-uris --yes install $packages | grep ^\' | cut -d\' -f2 > wget_install.lst