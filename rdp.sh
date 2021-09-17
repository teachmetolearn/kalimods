#!/bin/sh
echo "[+] Installing Xfce, this will take a while"
apt update
apt upgrade
apt install -y kali-desktop-xfce xrdp
systemctl enable xrdp --now
apt install -y dbus-x11
/etc/init.d/xrdp start
adduser rdp
