#!/bin/bash

if [ $1 == "-a-i" -o $1 == "--all--i3" ]
then
  python=true
  intel_gpu_drivers=false
  nvidia_gpu_drivers=false
  amd_gpu_drivers=false
  virtualbox_drivers=false
  xorg_display_manager=true
  i3_window_manager=true
  kde_desktop_enviroment=false
  emulation=true
  network_drivers=false
  networking=true
  git=true
  cmake=true
  ide=true
  pycharm=true
  w3m=true
  firefox_browser=true
  chromium_browser=true
  pdf_viewer=true
  libre_office=true
  vlc=true
  media_editors=true
  steam=true
else
  if [ $1 == "-a-k" -o $1 == "--all--kde" ]
  then
    python=true
    intel_gpu_drivers=false
    nvidia_gpu_drivers=false
    amd_gpu_drivers=false
    virtualbox_drivers=false
    xorg_display_manager=true
    i3_window_manager=false
    kde_desktop_enviroment=true
    emulation=true
    network_drivers=false
    networking=true
    git=true
    cmake=true
    ide=true
    pycharm=true
    w3m=true
    firefox_browser=true
    chromium_browser=true
    pdf_viewer=true
    libre_office=true
    vlc=true
    media_editors=true
    steam=true
  else
    if [ $# -lt 23 ]
    then
      python=true
      intel_gpu_drivers=false
      nvidia_gpu_drivers=false
      amd_gpu_drivers=false
      virtualbox_drivers=false
      xorg_display_manager=true
      i3_window_manager=false
      kde_desktop_enviroment=true
      emulation=false
      network_drivers=false
      networking=true
      git=false
      cmake=false
      ide=false
      pycharm=false
      w3m=true
      firefox_browser=false
      chromium_browser=true
      pdf_viewer=true
      libre_office=true
      vlc=true
      media_editors=true
      steam=true
    else
      python=$1
      intel_gpu_drivers=$2
      nvidia_gpu_drivers=$3
      amd_gpu_drivers=$4
      virtualbox_drivers=$5
      xorg_display_manager=$6
      i3_window_manager=$7
      kde_desktop_enviroment=$8
      emulation=$9
      network_drivers=$10
      networking=$11
      git=$12
      cmake=$13
      ide=$14
      pycharm=$15
      w3m=$16
      firefox_browser=$17
      chromium_browser=$18
      pdf_viewer=$19
      libre_office=$20
      vlc=$21
      media_editors=$22
      steam=$23
    fi
  fi
fi


pacman -Syyu --noconfirm

for i in reflector
do
  pacman -S --noconfirm $i
done

reflector --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -Syyu --noconfirm

#install base
for i in base base-devel grub-bios linux-headers linux-lts linux-lts-headers sudo ntp
do
  pacman -S --noconfirm $i
done
for i in ntpd
do
  systemctl enable $i
done

if [ "$python" = true ]
then
  #install python
  for i in python2 python pypy pypy3
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall python
  for i in python2 python pypy pypy3
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$intel_gpu_drivers" = true ]
then
  #install intel gpu drivers
  for i in xf86-video-intel
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall intel gpu drivers
  for i in xf86-video-intel
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$nvidia_gpu_drivers" = true ]
then
  #install nvidia gpu drivers
  for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall nvidia gpu drivers
  for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$amd_gpu_drivers" = true ]
then
  #install amd gpu drivers
  for i in xf86-video-amdgpu xf86-video-ati
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall amd gpu drivers
  for i in xf86-video-amdgpu xf86-video-ati
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$virtualbox_drivers" = true ]
then
  #install virtualbox drivers
  for i in virtualbox-guest-utils virtualbox-guest-modules-arch
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall virtualbox drivers
  for i in virtualbox-guest-utils virtualbox-guest-modules-arch
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$xorg_display_manager" = true ]
then
  #install xorg display manager
  for i in xorg-server xorg-xinit xterm xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall xorg display manager
  for i in xorg-server xorg-xinit xterm xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$i3_window_manager" = true ]
then
  #install i3 window manager
  for i in xdm-archlinux i3
  do
    pacman -S --noconfirm $i
  done
  for i in xdm-archlinux.service
  do
    systemctl enable $i
  done
else
  #uninstall i3 window manager
  for i in xdm-archlinux.service
  do
    systemctl disable $i
  done
  for i in xdm-archlinux i3
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$kde_desktop_enviroment" = true ]
then
  #install kde desktop enviroment
  for i in sddm plasma kde-applications
  do
    pacman -S --noconfirm $i
  done
  for i in sddm
  do
    systemctl enable $i
  done
else
  #uninstall kde desktop enviroment
  for i in sddm
  do
    systemctl disable $i
  done
  for i in sddm plasma kde-applications
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$emulation" = true ]
then
  #install emulation
  for i in virtualbox virtualbox-host-modules-arch virtualbox-host-dkms wine-staging wine_gecko wine-mono
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall emulation
  for i in virtualbox virtualbox-host-modules-arch virtualbox-host-dkms wine-staging wine_gecko wine-mono
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$network_drivers" = true ]
then
  #install network drivers
  for i in broadcom-wl broadcom-wl-dkms
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall network drivers
  for i in broadcom-wl broadcom-wl-dkms
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$networking" = true ]
then
#install networking
  for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond
  do
    pacman -S --noconfirm $i
  done
  for i in NetworkManager
  do
    systemctl enable $i
  done
else
  #uninstall networking
  for i in NetworkManager
  do
    systemctl disable $i
  done
  for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$git" = true ]; then
  #install git
  for i in git; do
    pacman -S --noconfirm $i
  done
else
  #uninstall git
  for i in git; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$cmake" = true ]
then
  #install cmake
  for i in cmake
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall cmake
  for i in cmake
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$ide" = true ]
then
  #install ide
  for i in qtcreator codeblocks
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall ide
  for i in qtcreator codeblocks
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$pycharm" = true ]
then
  #install pycharm
  for i in pycharm-community-edition
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall pycharm
  for i in pycharm-community-edition
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$w3m" = true ]
then
  #install w3m browser
  for i in w3m
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall w3m browser
  for i in w3m
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$firefox_browser" = true ]
then
  #install firefox browser
  for i in firefox
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall firefox browser
  for i in firefox
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$chromium_browser" = true ]
then
  #install chromium browser
  for i in chromium
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall chromium browser
  for i in chromium
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$pdf_viewer" = true ]
then
  #install pdf viewer
  for i in zathura zathura-pdf-mupdf
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall pdf viewer
  for i in zathura zathura-pdf-mupdf
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$libre_office" = true ]
then
  #install libreoffice
  for i in libreoffice-fresh libreoffice-fresh-en-gb
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall libreoffice
  for i in libreoffice-fresh libreoffice-fresh-en-gb
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$vlc" = true ]
then
  #install vlc
  for i in vlc
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall vlc
  for i in vlc
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$media_editors" = true ]
then
  #install media editors
  for i in gimp audacity blender
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall media editors
  for i in gimp audacity blender
  do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$steam" = true ]
then
  #install steam
  for i in steam steam-native-runtime
  do
    pacman -S --noconfirm $i
  done
else
  #uninstall steam
  for i in steam steam-native-runtime
  do
    pacman -Rns --noconfirm $i
  done
fi

pacman -Syyu --noconfirm

exit 0
