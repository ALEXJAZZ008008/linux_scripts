intel_gpu_drivers=false
nvidia_gpu_drivers=false
amd_gpu_drivers=false
virtualbox_drivers=false
xorg_display_manager=true
i3_window_manager=false
kde_desktop_enviroment=false
mate_desktop_enviroment=false
open_source_fonts=false
network_drivers=false
networking=true
cmake=true
git=true
python=true
swig=false
ide=true
pycharm=true
w3m=true
firefox_browser=false
chromium_browser=true
pdf_viewer=true
libre_office=true
vlc=true
media_editors=false
steam=true
spotify=true
emulation=true

pacman -Syyu --noconfirm

for i in reflector; do
  pacman -S --noconfirm $i
done

reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacman -Syyu --noconfirm

#install base
for i in base base-devel grub-bios linux-headers linux-lts linux-lts-headers sudo ntp; do
  pacman -S --noconfirm $i
done
for i in ntpd; do
  systemctl enable $i
done

#install open source drivers
for i in xf86-video-vesa xf86-video-nouveau lib32-mesa-libgl libgl mesa; do
  pacman -S --noconfirm $i
done

if [ "$intel_gpu_drivers" = true ]; then
  #install intel gpu drivers
  for i in xf86-video-intel; do
    pacman -S --noconfirm $i
  done
else
  #uninstall intel gpu drivers
  for i in xf86-video-intel; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$nvidia_gpu_drivers" = true ]; then
  #install nvidia gpu drivers
  for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
    pacman -S --noconfirm $i
  done
else
  #uninstall nvidia gpu drivers
  for i in nvidia nvidia-lts nvidia-libgl lib32-nvidia-libgl; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$amd_gpu_drivers" = true ]; then
  #install amd gpu drivers
  for i in xf86-video-amdgpu xf86-video-ati; do
    pacman -S --noconfirm $i
  done
else
  #uninstall amd gpu drivers
  for i in xf86-video-amdgpu xf86-video-ati; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$virtualbox_drivers" = true ]; then
  #install virtualbox drivers
  for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
    pacman -S --noconfirm $i
  done
else
  #uninstall virtualbox drivers
  for i in virtualbox-guest-utils virtualbox-guest-modules-arch; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$xorg_display_manager" = true ]; then
  #install xorg display manager
  for i in xorg-server xorg-xinit xterm; do
    pacman -S --noconfirm $i
  done
else
  #uninstall xorg display manager
  for i in xorg-server xorg-xinit xterm; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$i3_window_manager" = true ]; then
  #install i3 window manager
  for i in xorg-xdm xdm-archlinux i3; do
    pacman -S --noconfirm $i
  done
  for i in xdm-archlinux.service; do
    systemctl enable $i
  done
else
  #uninstall i3 window manager
  for i in xdm-archlinux.service; do
    systemctl disable $i
  done
  for i in xorg-xdm xdm-archlinux i3; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$kde_desktop_enviroment" = true ]; then
  #install kde desktop enviroment
  for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
    pacman -S --noconfirm $i
  done
  for i in sddm; do
    systemctl enable $i
  done
else
  #uninstall kde desktop enviroment
  for i in sddm; do
    systemctl disable $i
  done
  for i in sddm plasma-meta plasma plasma-desktop plasma-wayland-session kde-applications kde-applications-meta; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$mate_desktop_enviroment" = true ]; then
  #install mate desktop enviroment
  for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
    pacman -S --noconfirm $i
  done
  for i in lightdm; do
    systemctl enable $i
  done
else
  #uninstall mate desktop enviroment
  for i in lightdm; do
    systemctl disable $i
  done
  for i in lightdm lightdm-gtk-greeter deepin-session-ui mate mate-extra mate-applet-dock mate-applet-streamer mate-menu; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$open_source_fonts" = true ]; then
  #install open source fonts
  for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
    pacman -S --noconfirm $i
  done
else
  #uninstall open source fonts
  for i in ttf-liberation font-bh-ttf ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-roboto noto-fonts ttf-ubuntu-font-family; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$network_drivers" = true ]; then
  #install network drivers
  for i in broadcom-wl broadcom-wl-dkms; do
    pacman -S --noconfirm $i
  done
else
  #uninstall network drivers
  for i in broadcom-wl broadcom-wl-dkms; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$networking" = true ]; then
#install networking
  for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
    pacman -S --noconfirm $i
  done
  for i in NetworkManager; do
    systemctl enable $i
  done
else
  #uninstall networking
  for i in NetworkManager; do
    systemctl disable $i
  done
  for i in openssh dialog network-manager-applet networkmanager networkmanager-openvpn wireless_tools wpa_supplicant wpa_actiond; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$cmake" = true ]; then
  #install cmake
  for i in cmake extra-cmake-modules; do
    pacman -S --noconfirm $i
  done
else
  #uninstall cmake
  for i in cmake extra-cmake-modules; do
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

if [ "$python" = true ]; then
  #install python
  for i in python2 python pypy pypy3; do
    pacman -S --noconfirm $i
  done
else
  #uninstall python
  for i in python2 python pypy pypy3; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$swig" = true ]; then
  #install swig
  for i in swig; do
    pacman -S --noconfirm $i
  done
else
  #uninstall swig
  for i in swig; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$ide" = true ]; then
  #install ide
  for i in qtcreator qt5-base qt4 codeblocks doxygen doxygen-docs; do
    pacman -S --noconfirm $i
  done
else
  #uninstall ide
  for i in qtcreator qt5-base qt4 codeblocks doxygen doxygen-docs; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$pycharm" = true ]; then
  #install pycharm
  for i in pycharm-community-edition; do
    pacman -S --noconfirm $i
  done
else
  #uninstall pycharm
  for i in pycharm-community-edition; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$w3m" = true ]; then
  #install w3m browser
  for i in w3m; do
    pacman -S --noconfirm $i
  done
else
  #uninstall w3m browser
  for i in w3m; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$firefox_browser" = true ]; then
  #install firefox browser
  for i in firefox firefox-developer-edition arch-firefox-search; do
    pacman -S --noconfirm $i
  done
else
  #uninstall firefox browser
  for i in firefox firefox-developer-edition arch-firefox-search; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$chromium_browser" = true ]; then
  #install chromium browser
  for i in chromium; do
    pacman -S --noconfirm $i
  done
else
  #uninstall chromium browser
  for i in chromium; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$pdf_viewer" = true ]; then
  #install pdf viewer
  for i in zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-pdf-poppler zathura-ps; do
    pacman -S --noconfirm $i
  done
else
  #uninstall pdf viewer
  for i in zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-pdf-poppler zathura-ps; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$libre_office" = true ]; then
  #install libreoffice
  for i in libreoffice-fresh libreoffice-still libreoffice-fresh-en-gb; do
    pacman -S --noconfirm $i
  done
else
  #uninstall libreoffice
  for i in libreoffice-fresh libreoffice-still libreoffice-fresh-en-gb; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$vlc" = true ]; then
  #install vlc
  for i in vlc; do
    pacman -S --noconfirm $i
  done
else
  #uninstall vlc
  for i in vlc; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$media_editors" = true ]; then
  #install media editors
  for i in gimp audacity blender; do
    pacman -S --noconfirm $i
  done
else
  #uninstall media editors
  for i in gimp audacity blender; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$steam" = true ]; then
  #install steam
  for i in steam steam-native-runtime; do
    pacman -S --noconfirm $i
  done
else
  #uninstall steam
  for i in steam steam-native-runtime; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$spotify" = true ]; then
  #install spotify
  for i in clementine; do
    pacman -S --noconfirm $i
  done
else
  #uninstall spotify
  for i in clementine; do
    pacman -Rns --noconfirm $i
  done
fi

if [ "$emulation" = true ]; then
  #install emulation
  for i in virtualbox virtualbox-host-modules-arch virtualbox-host-dkms wine wine-staging wine_gecko wine-mono; do
    pacman -S --noconfirm $i
  done
else
  #uninstall emulation
  for i in virtualbox virtualbox-host-modules-arch virtualbox-host-dkms wine wine-staging wine_gecko wine-mono; do
    pacman -Rns --noconfirm $i
  done
fi

pacman -Syyu --noconfirm

exit 0
