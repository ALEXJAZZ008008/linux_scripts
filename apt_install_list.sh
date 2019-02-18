cmake_gui=true
python=true
python_libraries=false
python_3=true
python_3_libraries=false
pypy=true
swig=false
kde_desktop_enviroment=true
open_source_fonts=false
ide=true
networking=true
w3m=true
firefox=false
chromium=true
emulation=true
vlc=true
pdf_viewer=true
libre_office=true
media_editors=false
steam_linux=true
clion=false
pycharm=true
skype=true
spotify=true
steam_windows=true

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

#Build
for i in linux-headers-generic build-essential gcc g++ make sudo cmake cmake3 git snapd pavucontrol; do
  sudo apt install -y $i
done

if [ "$cmake_gui" = true ]; then
  #Install CMake GUI
  for i in cmake-gui cmake-qt-gui cmake-curses-gui cmake3-curses-gui; do
    sudo apt install -y $i
  done
else
  #Uninstall CMake GUI
  for i in cmake-gui cmake-qt-gui cmake-curses-gui cmake3-curses-gui; do
    sudo apt purge -y $i
  done
fi

if [ "$python" = true ]; then
  #Install Python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra; do
    sudo apt install -y $i
  done
else
  #Uninstall Python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra; do
    sudo apt purge -y $i
  done
fi

if [ "$python_libraries" = true ]; then
  #Install Python libraries
  for i in python-numpy python-scipy python-matplotlib; do
    sudo apt install -y $i
  done
else
  #Uninstall Python libraries
  for i in python-numpy python-scipy python-matplotlib; do
    sudo apt purge -y $i
  done
fi

if [ "$python_3" = true ]; then
  #Install Python 3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra; do
    sudo apt install -y $i
  done
else
  #Uninstall Python 3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra; do
    sudo apt purge -y $i
  done
fi

if [ "$python_3_libraries" = true ]; then
  #Install Python 3 libraries
  for i in python3-numpy python3-scipy python3-matplotlib; do
    sudo apt install -y $i
  done
else
  #Uninstall Python 3 libraries
  for i in python3-numpy python3-scipy python3-matplotlib; do
    sudo apt purge -y $i
  done
fi

if [ "$pypy" = true ]; then
  #Install Pypy
  for i in pypy pypy3; do
    sudo apt install -y $i
  done
else
  #Uninstall Pypy
  for i in pypy pypy3; do
    sudo apt purge -y $i
  done
fi

if [ "$swig" = true ]; then
  #Install Swig
  for i in swig; do
    sudo apt install -y $i
  done
else
  #Uninstall Swig
  for i in swig; do
    sudo apt purge -y $i
  done
fi

if [ "$kde_desktop_enviroment" = true ]; then
  #Install KDE desktop enviroment
  for i in sddm kde-full; do
    sudo apt install -y $i
  done
else
  #Uninstall KDE desktop enviroment
  for i in sddm kde-full; do
    sudo apt purge -y $i
  done
fi

if [ "$open_source_fonts" = true ]; then
  #Install open source fonts
  for i in libfontconfig1; do
    sudo apt install -y $i
  done
else
  #Uninstall open source fonts
  for i in libfontconfig1; do
    sudo apt purge -y $i
  done
fi

if [ "$ide" = true ]; then
  #Install IDE
  for i in qtcreator codeblocks doxygen; do
    sudo apt install -y $i
  done
else
  #Uninstall IDE
  for i in qtcreator codeblocks doxygen; do
    sudo apt purge -y $i
  done
fi

if [ "$networking" = true ]; then
  #Install Networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-vpnc network-manager-openconnect network-manager-openvpn-gnome network-manager-vpnc-gnome network-manager-openconnect-gnome; do
    sudo apt install -y $i
  done
else
  #Uninstall Networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-vpnc network-manager-openconnect network-manager-openvpn-gnome network-manager-vpnc-gnome network-manager-openconnect-gnome; do
    sudo apt purge -y $i
  done
fi

if [ "$w3m" = true ]; then
  #Install w3m
  for i in w3m w3m-el w3m-el-snapshot w3m-img; do
    sudo apt install -y $i
  done
else
  #Uninstall w3m
  for i in w3m w3m-el w3m-el-snapshot w3m-img; do
    sudo apt purge -y $i
  done
fi

if [ "$firefox" = true ]; then
  #Install Firefox
  for i in firefox firefox-globalmenu firefox-launchpad-plugin firefox-locale-en firefox-mozsymbols firefox-testsuite firefoxdriver; do
    sudo apt install -y $i
  done
else
  #Uninstall Firefox
  for i in firefox firefox-globalmenu firefox-launchpad-plugin firefox-locale-en firefox-mozsymbols firefox-testsuite firefoxdriver; do
    sudo apt purge -y $i
  done
fi

if [ "$chromium" = true ]; then
  #Install Chromium
  for i in chromium-browser; do
    sudo apt install -y $i
  done
else
  #Uninstall Chromium
  for i in chromium-browser; do
    sudo apt purge -y $i
  done
fi

if [ "$emulation" = true ]; then
  #Install emulation
  for i in virtualbox wine-development; do
    sudo apt install -y $i
  done
else
  #Uninstall emulation
  for i in virtualbox wine-development; do
    sudo apt purge -y $i
  done
fi

if [ "$vlc" = true ]; then
  #Install VLC
  for i in vlc; do
    sudo apt install -y $i
  done
else
  #Uninstall VLC
  for i in vlc; do
    sudo apt purge -y $i
  done
fi

if [ "$pdf_viewer" = true ]; then
  #Install PDF viewer
  for i in zathura zathura-cb zathura-djvu zathura-pdf-poppler zathura-ps; do
    sudo apt install -y $i
  done
else
  #Uninstall PDF viewer
  for i in zathura zathura-cb zathura-djvu zathura-pdf-poppler zathura-ps; do
    sudo apt purge -y $i
  done
fi

if [ "$libre_office" = true ]; then
  #Install LibreOffice
  for i in libreoffice; do
    sudo apt install -y $i
  done
else
  #Uninstall LibreOffice
  for i in libreoffice; do
    sudo apt purge -y $i
  done
fi

if [ "$media_editors" = true ]; then
  #Install media editors
  for i in gimp audacity blender blender-data; do
    sudo apt install -y $i
  done
else
  #Uninstall media editors
  for i in gimp audacity blender blender-data; do
    sudo apt purge -y $i
  done
fi

if [ "$steam_linux" = true ]; then
  #Install Steam(Linux)
  for i in steam-installer; do
    sudo apt install -y $i
  done
else
  #Uninstall Steam(Linux)
  for i in steam-installer; do
    sudo apt purge -y $i
  done
fi

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

if [ "$clion" = true ]; then
  #Install Clion
  for i in "clion --classic --edge"; do
    sudo snap install $i
  done
else
  #Remove Clion
  for i in "clion --classic --edge"; do
    sudo snap remove $i
  done
fi

if [ "$pycharm" = true ]; then
  #Install Pycharm
  for i in "pycharm-professional --classic --edge"; do
    sudo snap install $i
  done
else
  #Remove Pycharm
  for i in "pycharm-professional --classic --edge"; do
    sudo snap remove $i
  done
fi

if [ "skype" = true ]; then
  #Install Skype
  for i in "skype --classic --edge"; do
    sudo snap install $i
  done
else
  #Remove Skype
  for i in "skype --classic --edge"; do
    sudo snap remove $i
  done
fi

if [ "$spotify" = true ]; then
  #Install Spotify
  for i in "spotify --classic --edge"; do
    sudo snap install $i
  done
else
  #Remove Spotify
  for i in "spotify --classic --edge"; do
    sudo snap remove $i
  done
fi

if [ "$steam_windows" = true ]; then
  #Install Steam(Windows)
  for i in "steamforwindows --classic --edge"; do
    sudo snap install $i
  done
else
  #Remove Steam(Windows)
  for i in "steamforwindows --classic --edge"; do
    sudo snap remove $i
  done
fi

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

exit 0
