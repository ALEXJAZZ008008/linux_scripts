#!/bin/bash

pacman -Syyu --noconfirm

for i in reflector; do
  pacman -S --noconfirm $i
done

reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -Syyu --noconfirm

exit 0
