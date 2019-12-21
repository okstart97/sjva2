#!/bin/bash
cd $HOME
cd ../usr/share
pkg -y install proot
curl -LO https://soju6jan.com/file/TermuxAlpine.tar.gz
tar -zxvf TermuxAlpine.tar.gz
rm TermuxAlpine.tar.gz
mv TermuxAlpine/startalpine ../bin
curl -LO https://raw.githubusercontent.com/soju6jan/SJVA2/master/etc/termux/my_start.sh
mv my_start.sh ./TermuxAlpine/home/SJVA2/
curl -LO https://raw.githubusercontent.com/soju6jan/SJVA2/master/etc/termux/sjva.db_
mv sjva.db_ ./TermuxAlpine/home/SJVA2/data/db/
cd $HOME
curl -LO https://raw.githubusercontent.com/soju6jan/SJVA2/master/etc/termux/termux_bash_profile
mv termux_bash_profile ~/.profile
echo 'SJVA copy completed.. Rerun Termux'
exit