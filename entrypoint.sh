#!/bin/sh

pacman -Syu --noconfirm

pacman -S --noconfirm git

useradd -mg wheel build
sed -i 's/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers

cd /home/build
chown -R build /home/build

su build
