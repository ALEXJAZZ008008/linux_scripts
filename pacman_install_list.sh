sudo pacman -Syyyu

#Purge
#for i in sddm NetworkManager ntpd lightdm; do
#  sudo systemctl disable $i
#done

#for i in xorg-server xorg-xinit xterm xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family  openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond sudo vim tmux ntp reflector telepathy-haze chromium steam steam-native-runtime clementine xf86-video-intel nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl xf86-video-amdgpu xf86-video-ati virtualbox-guest-utils virtualbox-guest-modules-arch i3 lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu firefox firefox-developer-edition arch-firefox-search; do
#  sudo pacman -Rns --noconfirm $i
#done

#Base with KDE
for i in base base-devel grub-bios linux-headers linux-lts linux-lts-headers xorg-server xorg-xinit xterm xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family  openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond sudo vim tmux ntp reflector telepathy-haze chromium steam steam-native-runtime clementine; do
  sudo pacman -S --noconfirm $i
done

for i in sddm NetworkManager ntpd; do
  sudo systemctl enable $i
done

#Intel GPU
#for i in xf86-video-intel; do
#  sudo pacman -S --noconfirm $i
#done

#Nvidia GPU
#for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
#  sudo pacman -S --noconfirm $i
#done

#AMD GPU
#for i in xf86-video-amdgpu xf86-video-ati; do
#  sudo pacman -S --noconfirm $i
#done

#VirtualBox
#for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
#  sudo pacman -S --noconfirm $i
#done

#i3
#for i in i3; do
#  sudo pacman -S --noconfirm $i
#done

#MATE
#for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
#  sudo pacman -S --noconfirm $i
#done

#for i in lightdm; do
#  sudo systemctl enable $i
#done

#Firefox
#for i in firefox firefox-developer-edition arch-firefox-search; do
#  sudo pacman -S --noconfirm $i
#done

exit 0
