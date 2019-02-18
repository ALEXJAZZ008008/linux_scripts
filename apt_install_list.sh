for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

#Build
for i in linux-headers-generic build-essential gcc g++ make sudo cmake cmake3 git snapd pavucontrol; do
  sudo apt install -y $i
done

#Install CMake GUI
for i in cmake-gui cmake-qt-gui cmake-curses-gui cmake3-curses-gui; do
  sudo apt install -y $i
done

#Uninstall CMake GUI
#for i in cmake-gui cmake-qt-gui cmake-curses-gui cmake3-curses-gui; do
#  sudo apt purge -y $i
#done

#Install Python
for i in python python-dev python-pip python-virtualenv python-distutils-extra; do
  sudo apt install -y $i
done

#Uninstall Python
#for i in python python-dev python-pip python-virtualenv python-distutils-extra; do
#  sudo apt purge -y $i
#done

#Install Python libraries
#for i in python-numpy python-scipy python-matplotlib; do
#  sudo apt install -y $i
#done

#Uninstall Python libraries
#for i in python-numpy python-scipy python-matplotlib; do
#  sudo apt purge -y $i
#done

#Install Python 3
for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra; do
  sudo apt install -y $i
done

#Uninstall Python 3
#for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra; do
#  sudo apt purge -y $i
#done

#Install Python 3 libraries
#for i in python3-numpy python3-scipy python3-matplotlib; do
#  sudo apt install -y $i
#done

#Uninstall Python 3 libraries
#for i in python3-numpy python3-scipy python3-matplotlib; do
#  sudo apt purge -y $i
#done

#Install Swig
#for i in swig; do
#  sudo apt install -y $i
#done

#Uninstall Swig
#for i in swig; do
#  sudo apt purge -y $i
#done

#Install KDE desktop enviroment
for i in sddm kde-full; do
  sudo apt install -y $i
done

#Uninstall KDE desktop enviroment
#for i in sddm kde-full; do
#  sudo apt purge -y $i
#done

#Install open source fonts
#for i in libfontconfig1; do
#  sudo apt install -y $i
#done

#Uninstall open source fonts
#for i in libfontconfig1; do
#  sudo apt purge -y $i
#done

#Install IDE
for i in qtcreator codeblocks doxygen; do
  sudo apt install -y $i
done

#Uninstall IDE
#for i in qtcreator codeblocks doxygen; do
#  sudo apt purge -y $i
#done

#Install Networking
for i in network-manager network-manager-gnome network-manager-openvpn network-manager-vpnc network-manager-openconnect network-manager-openvpn-gnome network-manager-vpnc-gnome network-manager-openconnect-gnome; do
  sudo apt install -y $i
done

#Uninstall Networking
#for i in network-manager network-manager-gnome network-manager-openvpn network-manager-vpnc network-manager-openconnect network-manager-openvpn-gnome network-manager-vpnc-gnome network-manager-openconnect-gnome; do
#  sudo apt purge -y $i
#done

#Install w3m
for i in w3m w3m-el w3m-el-snapshot w3m-img; do
  sudo apt install -y $i
done

#Uninstall w3m
#for i in w3m w3m-el w3m-el-snapshot w3m-img; do
#  sudo apt purge -y $i
#done


#Install Firefox
#for i in firefox firefox-globalmenu firefox-launchpad-plugin firefox-locale-en firefox-mozsymbols firefox-testsuite firefoxdriver; do
#  sudo apt install -y $i
#done

#Uninstall Firefox
#for i in firefox firefox-globalmenu firefox-launchpad-plugin firefox-locale-en firefox-mozsymbols firefox-testsuite firefoxdriver; do
#  sudo apt purge -y $i
#done

#Install Chromium
for i in chromium-browser; do
  sudo apt install -y $i
done

#Uninstall Chromium
#for i in chromium-browser; do
#  sudo apt purge -y $i
#done

#Install emulation
#for i in virtualbox wine-development; do
#  sudo apt install -y $i
#done

#Uninstall emulation
#for i in virtualbox wine-development; do
#  sudo apt purge -y $i
#done

#Install VLC
#for i in vlc; do
#  sudo apt install -y $i
#done

#Uninstall VLC
#for i in vlc; do
#  sudo apt purge -y $i
#done

#Install PDF viewer
for i in zathura zathura-cb zathura-djvu zathura-pdf-poppler zathura-ps; do
  sudo apt install -y $i
done

#Uninstall PDF viewer
#for i in zathura zathura-cb zathura-djvu zathura-pdf-poppler zathura-ps; do
#  sudo apt purge -y $i
#done

#Install LibreOffice
for i in libreoffice; do
  sudo apt install -y $i
done

#Uninstall LibreOffice
#for i in libreoffice; do
#  sudo apt purge -y $i
#done

#Install media editors
#for i in gimp audacity blender blender-data; do
#  sudo apt install -y $i
#done

#Uninstall media editors
#for i in gimp audacity blender blender-data; do
#  sudo apt purge -y $i
#done

#Install Steam(Linux)
for i in steam-installer; do
  sudo apt install -y $i
done

#Uninstall Steam(Linux)
#for i in steam-installer; do
#  sudo apt purge -y $i
#done

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

#Install Clion
#for i in "clion --classic --edge"; do
#  sudo snap install $i
#done

#Remove Clion
#for i in "clion --classic --edge"; do
#  sudo snap remove $i
#done

#Install Pycharm
for i in "pycharm-professional --classic --edge"; do
  sudo snap install $i
done

#Remove Pycharm
#for i in "pycharm-professional --classic --edge"; do
#  sudo snap remove $i
#done

#Install Skype
for i in "skype --classic --edge"; do
  sudo snap install $i
done

#Remove Skype
#for i in "skype --classic --edge"; do
#  sudo snap remove $i
#done

#Install Spotify
for i in "spotify --classic --edge"; do
  sudo snap install $i
done

#Remove Spotify
#for i in "spotify --classic --edge"; do
#  sudo snap remove $i
#done

#Install Steam(Windows)
for i in "steamforwindows --classic --edge"; do
  sudo snap install $i
done

#Remove Steam(Windows)
#for i in "steamforwindows --classic --edge"; do
#  sudo snap remove $i
#done

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

exit 0
