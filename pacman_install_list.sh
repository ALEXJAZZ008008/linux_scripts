./pacman_update.sh

#install Base
for i in base base-devel grub-bios linux-headers linux-lts linux-lts-headers sudo ntp; do
  sudo pacman -Syyu --noconfirm $i
done
for i in ntpd; do
  sudo systemctl enable $i
done

#install open source drivers
for i in xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa; do
  sudo pacman -Syyu --noconfirm $i
done

#install Intel GPU drivers
#for i in xf86-video-intel; do
#  sudo pacman -Syyu --noconfirm $i
#done

#uninstall Intel GPU drivers
#for i in xf86-video-intel; do
#  sudo pacman -Rns --noconfirm $i
#done

#install Nvidia GPU drivers
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  sudo pacman -Syyu --noconfirm $i
#done

#uninstall Nvidia GPU drivers
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  sudo pacman -Rns --noconfirm $i
#done

#install AMD GPU drivers
#for i in xf86-video-amdgpu xf86-video-ati; do
#  sudo pacman -Syyu --noconfirm $i
#done

#uninstall AMD GPU drivers
#for i in xf86-video-amdgpu xf86-video-ati; do
#  sudo pacman -Rns --noconfirm $i
#done

#install VirtualBox drivers
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  sudo pacman -Syyu --noconfirm $i
#done

#uninstall VirtualBox drivers
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  sudo pacman -Rns --noconfirm $i
#done

#install Xorg
for i in xorg-server xorg-xinit xterm; do
  sudo pacman -Syyu --noconfirm $i
done

#uninstall Xorg
#for i in xorg-server xorg-xinit xterm; do
#  sudo pacman -Rns --noconfirm $i
#done

#install KDE
#for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
#  sudo pacman -Syyu --noconfirm $i
#done
#for i in sddm; do
#  sudo systemctl enable $i
#done

#uninstall KDE
#for i in sddm; do
#  sudo systemctl disable $i
#done
#for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
#  sudo pacman -Rns --noconfirm $i
#done

#install i3
#for i in xorg-xdm xdm-archlinux i3; do
#  sudo pacman -Syyu --noconfirm $i
#done
#for i in xdm-archlinux.service; do
#  sudo systemctl enable $i
#done

#uninstall i3
#for i in xdm-archlinux.service; do
#  sudo systemctl disable $i
#done
#for i in xorg-xdm xdm-archlinux i3; do
#  sudo pacman -Rns --noconfirm $i
#done

#install MATE
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  sudo pacman -Syyu --noconfirm $i
#done
#for i in lightdm; do
#  sudo systemctl enable $i
#done

#uninstall MATE
#for i in lightdm; do
#  sudo systemctl disable $i
#done
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  sudo pacman -Rns --noconfirm $i
#done

#install open source fonts
#for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
#  sudo pacman -Syyu --noconfirm $i
#done

#uninstall open source fonts
#for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
#  sudo pacman -Rns --noconfirm $i
#done

#install network drivers
for i in broadcom-wl broadcom-wl-dkms; do
  sudo pacman -Syyu --noconfirm $i
done

#uninstall open source fonts
#for i in broadcom-wl broadcom-wl-dkms; do
#  sudo pacman -Rns --noconfirm $i
#done

#install network
for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
  sudo pacman -Syyu --noconfirm $i
done
for i in NetworkManager; do
  sudo systemctl enable $i
done

#uninstall network
#for i in NetworkManager; do
#  sudo systemctl disable $i
#done
#for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
#  sudo pacman -Rns --noconfirm $i
#done

#install git
for i in git; do
  sudo pacman -Syyu --noconfirm $i
done

#uninstall git
#for i in git; do
#  sudo pacman -Rns --noconfirm $i
#done

#install Firefox
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  sudo pacman -Syyu --noconfirm $i
#done

#uninstall Firefox
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  sudo pacman -Rns --noconfirm $i
#done

#install Chromium
for i in chromium; do
  sudo pacman -Syyu --noconfirm $i
done

#uninstall Chromium
#for i in chromium; do
#  sudo pacman -Rns --noconfirm $i
#done

#install Steam
for i in steam steam-native-runtime; do
  sudo pacman -Syyu --noconfirm $i
done

#uninstall Steam
#for i in steam steam-native-runtime; do
#  sudo pacman -Rns --noconfirm $i
#done

#install Spotify
for i in clementine; do
  sudo pacman -Syyu --noconfirm $i
done

#uninstall Spotify
#for i in clementine; do
#  sudo pacman -Rns --noconfirm $i
#done

exit 0
