#!/bin/sh

echo "CLONING script!!!"
echo "###### ......"
#git clone https://github.com/bimsky/nitip-sebentar

echo "PREPARING WORKSPACE ..."
echo "########################.............."
tce-load -wi busybox-httpd.tcz
sudo mkdir -p /mnt/sda1/wwwsite


echo "PREPARING SERVER..."

cd /usr/local/etc/init.d/
sudo ./openssh start

cd /etc/init.d/services/
sudo ./tftpd start

echo "CONFIGURING SERVER..."
echo "###########################......"
echo "############............."

sudo cp -R /home/tc/nitip-sebentar/assets /mnt/sda1/wwwsite
sudo cp /home/tc/nitip-sebentar/index.html /mnt/sda1/wwwsite

sudo cp /mnt/sda1/wwwsite/index.html /usr/local/httpd/bin/index.html
sudo cp -R /mnt/sda1/wwwsite/assets /usr/local/httpd/bin

echo "Starting..."
echo ".................."
echo "........................."
cd /usr/local/httpd/bin
sudo ./busybox httpd -p 80 -h /usr/local/httpd/bin
cd /usr/local/etc/init.d/
sudo ./openssh start
cd /etc/init.d/services/
sudo ./tftpd start

echo "WEB SERVER IS LIVE"
