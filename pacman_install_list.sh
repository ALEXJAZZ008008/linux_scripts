pacman -Syyu --noconfirm

for i in reflector; do
  pacman -S --noconfirm $i
done

reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -Syyu --noconfirm

#install Base
for i in base base-devel grub-bios linux-headers linux-lts linux-lts-headers sudo ntp; do
  pacman -Syyu --noconfirm $i
done
for i in ntpd; do
  systemctl enable $i
done

#install open source drivers
for i in xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa; do
  pacman -Syyu --noconfirm $i
done

#install Intel GPU drivers
#for i in xf86-video-intel; do
#  pacman -Syyu --noconfirm $i
#done

#uninstall Intel GPU drivers
#for i in xf86-video-intel; do
#  pacman -Rns --noconfirm $i
#done

#install Nvidia GPU drivers
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  pacman -Syyu --noconfirm $i
#done

#uninstall Nvidia GPU drivers
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  pacman -Rns --noconfirm $i
#done

#install AMD GPU drivers
#for i in xf86-video-amdgpu xf86-video-ati; do
#  pacman -Syyu --noconfirm $i
#done

#uninstall AMD GPU drivers
#for i in xf86-video-amdgpu xf86-video-ati; do
#  pacman -Rns --noconfirm $i
#done

#install VirtualBox drivers
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  pacman -Syyu --noconfirm $i
#done

#uninstall VirtualBox drivers
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  pacman -Rns --noconfirm $i
#done

#install Xorg
for i in xorg-server xorg-xinit xterm; do
  pacman -Syyu --noconfirm $i
done

#uninstall Xorg
#for i in xorg-server xorg-xinit xterm; do
#  pacman -Rns --noconfirm $i
#done

#install KDE
#for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
#  pacman -Syyu --noconfirm $i
#done
#for i in sddm; do
#  systemctl enable $i
#done

#uninstall KDE
#for i in sddm; do
#  systemctl disable $i
#done
#for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
#  pacman -Rns --noconfirm $i
#done

#install i3
#for i in xorg-xdm xdm-archlinux i3; do
#  pacman -Syyu --noconfirm $i
#done
#for i in xdm-archlinux.service; do
#  systemctl enable $i
#done

#uninstall i3
#for i in xdm-archlinux.service; do
#  systemctl disable $i
#done
#for i in xorg-xdm xdm-archlinux i3; do
#  pacman -Rns --noconfirm $i
#done

#install MATE
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  pacman -Syyu --noconfirm $i
#done
#for i in lightdm; do
#  systemctl enable $i
#done

#uninstall MATE
#for i in lightdm; do
#  systemctl disable $i
#done
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  pacman -Rns --noconfirm $i
#done

#install open source fonts
#for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
#  pacman -Syyu --noconfirm $i
#done

#uninstall open source fonts
#for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
#  pacman -Rns --noconfirm $i
#done

#install network drivers
for i in broadcom-wl broadcom-wl-dkms; do
  pacman -Syyu --noconfirm $i
done

#uninstall open source fonts
#for i in broadcom-wl broadcom-wl-dkms; do
#  pacman -Rns --noconfirm $i
#done

#install network
for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
  pacman -Syyu --noconfirm $i
done
for i in NetworkManager; do
  systemctl enable $i
done

#uninstall network
#for i in NetworkManager; do
#  systemctl disable $i
#done
#for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
#  pacman -Rns --noconfirm $i
#done

#install git
for i in git; do
  pacman -Syyu --noconfirm $i
done

#uninstall git
#for i in git; do
#  pacman -Rns --noconfirm $i
#done

#install Firefox
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  pacman -Syyu --noconfirm $i
#done

#uninstall Firefox
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  pacman -Rns --noconfirm $i
#done

#install Chromium
for i in chromium; do
  pacman -Syyu --noconfirm $i
done

#uninstall Chromium
#for i in chromium; do
#  pacman -Rns --noconfirm $i
#done

#install Steam
for i in steam steam-native-runtime; do
  pacman -Syyu --noconfirm $i
done

#uninstall Steam
#for i in steam steam-native-runtime; do
#  pacman -Rns --noconfirm $i
#done

#install Spotify
for i in clementine; do
  pacman -Syyu --noconfirm $i
done

#uninstall Spotify
#for i in clementine; do
#  pacman -Rns --noconfirm $i
#done

pacman -Syyu --noconfirm

for i in reflector; do
  pacman -S --noconfirm $i
done

reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -Syyu --noconfirm

exit 0
