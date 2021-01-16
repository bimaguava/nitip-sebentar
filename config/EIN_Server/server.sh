#!/bin/sh

echo "CLONING script!!!"
echo "###### ......"
git clone https://github.com/bimsky/nitip-sebentar

echo "PREPARING WORKSPACE ..."
echo "########################.............."
tce-load -wi busybox-httpd.tcz
sudo mkdir -p /mnt/sda1/wwwsite


echo "PREPARING SERVER..."
sudo su

cd /usr/local/etc/init.d/
./openssh start

cd /etc/init.d/services/
./tftpd start

echo "CONFIGURING SERVER..."
echo "###########################......"
echo "############............."
exit

cp -R ../../assets /mnt/sda1/wwwsite
cp ../../index.html /mnt/sda1/wwwsite

cp /mnt/sda1/wwwsite/index.html /usr/local/httpd/bin/index.html
cp -R /mnt/sda1/wwwsite/assets /usr/local/httpd/bin

echo "Starting..."
echo ".................."
echo "........................."
cd /usr/local/httpd/bin
./busybox httpd -p 80 -h /usr/local/httpd/bin
cd /usr/local/etc/init.d/
./openssh start
cd /etc/init.d/services/
./tftpd start
