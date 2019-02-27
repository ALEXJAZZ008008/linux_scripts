#!/bin/bash

if [ $1 == "-a" -o $1 == "--all" ]
then
  python=true
  python_3=true
  kde_desktop_enviroment=true
  emulation=true
  networking=true
  pypy=true
  git=true
  cmake_gui=true
  ide=true
  w3m=true
  firefox=true
  chromium=true
  pdf_viewer=true
  libre_office=true
  vlc=true
  media_editors=true
  steam_linux=true
  
  pypy3=true
  clion=true
  pycharm=true
  skype=true
  spotify=true
  steam_windows=true
  
  work=true
else
  if [ $# -lt 24 ]
  then
    python=true
    python_3=true
    kde_desktop_enviroment=true
    emulation=true
    networking=true
    pypy=false
    git=false
    cmake_gui=false
    ide=false
    w3m=true
    firefox=false
    chromium=true
    pdf_viewer=true
    libre_office=true
    vlc=true
    media_editors=true
    steam_linux=true
    
    pypy3=false
    clion=false
    pycharm=false
    skype=true
    spotify=true
    steam_windows=true
    
    work=false
  else
    python=$1
    python_3=$2
    kde_desktop_enviroment=$3
    emulation=$4
    networking=$5
    pypy=$6
    git=$7
    cmake_gui=$8
    ide=$9
    w3m=$10
    firefox=$11
    chromium=$12
    pdf_viewer=$13
    libre_office=$14
    vlc=$15
    media_editors=$16
    steam_linux=$17
    
    pypy3=$18
    clion=$19
    pycharm=$20
    skype=$21
    spotify=$22
    steam_windows=$23
    
    work=$24
  fi
fi

for i in update upgrade full-upgrade autoremove clean
do
  sudo apt $i -y
done

#Build
for i in linux-headers-generic sudo build-essential snapd
do
  sudo apt install -y $i
done

if [ "$python" = true ]
then
  #Install Python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra
  do
    sudo apt install -y $i
  done
else
  #Uninstall Python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra
  do
    sudo apt purge -y $i
  done
fi

if [ "$python_3" = true ]
then
  #Install Python 3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra
  do
    sudo apt install -y $i
  done
else
  #Uninstall Python 3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra
  do
    sudo apt purge -y $i
  done
fi

if [ "$kde_desktop_enviroment" = true ]
then
  #Install KDE desktop enviroment
  for i in sddm kde-full
  do
    sudo apt install -y $i
  done
else
  #Uninstall KDE desktop enviroment
  for i in sddm kde-full
  do
    sudo apt purge -y $i
  done
fi

if [ "$emulation" = true ]
then
  #Install emulation
  for i in virtualbox wine-development
  do
    sudo apt install -y $i
  done
else
  #Uninstall emulation
  for i in virtualbox wine-development
  do
    sudo apt purge -y $i
  done
fi

if [ "$networking" = true ]
then
  #Install Networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
  do
    sudo apt install -y $i
  done
else
  #Uninstall Networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
  do
    sudo apt purge -y $i
  done
fi

if [ "$pypy" = true ]
then
  #Install Pypy
  for i in pypy
  do
    sudo apt install -y $i
  done
else
  #Uninstall Pypy
  for i in pypy
  do
    sudo apt purge -y $i
  done
fi

if [ "$git" = true ]
then
  #Install git
  for i in git
  do
    sudo apt install -y $i
  done
else
  #Uninstall git
  for i in git
  do
    sudo apt purge -y $i
  done
fi

if [ "$cmake_gui" = true ]
then
  #Install CMake GUI
  for i in cmake-gui cmake-qt-gui
  do
    sudo apt install -y $i
  done
else
  #Uninstall CMake GUI
  for i in cmake-gui cmake-qt-gui
  do
    sudo apt purge -y $i
  done
fi

if [ "$ide" = true ]
then
  #Install IDE
  for i in qtcreator codeblocks
  do
    sudo apt install -y $i
  done
else
  #Uninstall IDE
  for i in qtcreator codeblocks
  do
    sudo apt purge -y $i
  done
fi

if [ "$w3m" = true ]
then
  #Install w3m
  for i in w3m
  do
    sudo apt install -y $i
  done
else
  #Uninstall w3m
  for i in w3m
  do
    sudo apt purge -y $i
  done
fi

if [ "$firefox" = true ]
then
  #Install Firefox
  for i in firefox
  do
    sudo apt install -y $i
  done
else
  #Uninstall Firefox
  for i in firefox
  do
    sudo apt purge -y $i
  done
fi

if [ "$chromium" = true ]
then
  #Install Chromium
  for i in chromium-browser
  do
    sudo apt install -y $i
  done
else
  #Uninstall Chromium
  for i in chromium-browser
  do
    sudo apt purge -y $i
  done
fi

if [ "$pdf_viewer" = true ]
then
  #Install PDF viewer
  for i in zathura zathura-pdf-poppler
  do
    sudo apt install -y $i
  done
else
  #Uninstall PDF viewer
  for i in zathura zathura-pdf-poppler
  do
    sudo apt purge -y $i
  done
fi

if [ "$libre_office" = true ]
then
  #Install LibreOffice
  for i in libreoffice
  do
    sudo apt install -y $i
  done
else
  #Uninstall LibreOffice
  for i in libreoffice
  do
    sudo apt purge -y $i
  done
fi

if [ "$vlc" = true ]
then
  #Install VLC
  for i in vlc
  do
    sudo apt install -y $i
  done
else
  #Uninstall VLC
  for i in vlc
  do
    sudo apt purge -y $i
  done
fi

if [ "$media_editors" = true ]
then
  #Install media editors
  for i in gimp audacity blender
  do
    sudo apt install -y $i
  done
else
  #Uninstall media editors
  for i in gimp audacity blender
  do
    sudo apt purge -y $i
  done
fi

if [ "$steam_linux" = true ]
then
  #Install Steam(Linux)
  for i in steam-installer
  do
    sudo apt install -y $i
  done
else
  #Uninstall Steam(Linux)
  for i in steam-installer
  do
    sudo apt purge -y $i
  done
fi

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

if [ "$pypy3" = true ]
then
  #Install pypy3
  for i in "pypy3 --classic"
  do
    sudo snap install $i
  done
else
  #Remove pypy3
  for i in "pypy3 --classic"
  do
    sudo snap remove $i
  done
fi

if [ "$clion" = true ]
then
  #Install Clion
  for i in "clion --classic"
  do
    sudo snap install $i
  done
else
  #Remove Clion
  for i in "clion --classic"
  do
    sudo snap remove $i
  done
fi

if [ "$pycharm" = true ]
then
  #Install Pycharm
  for i in "pycharm-professional --classic"
  do
    sudo snap install $i
  done
else
  #Remove Pycharm
  for i in "pycharm-professional --classic"
  do
    sudo snap remove $i
  done
fi

if [ "skype" = true ]
then
  #Install Skype
  for i in "skype --classic"
  do
    sudo snap install $i
  done
else
  #Remove Skype
  for i in "skype --classic"
  do
    sudo snap remove $i
  done
fi

if [ "$spotify" = true ]
then
  #Install Spotify
  for i in "spotify --classic"
  do
    sudo snap install $i
  done
else
  #Remove Spotify
  for i in "spotify --classic"
  do
    sudo snap remove $i
  done
fi

if [ "$steam_windows" = true ]
then
  #Install Steam(Windows)
  for i in "steamforwindows --classic"
  do
    sudo snap install $i
  done
else
  #Remove Steam(Windows)
  for i in "steamforwindows --classic"
  do
    sudo snap remove $i
  done
fi

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

if [ "$work" = true ]
then
  #Install work
  #medical imaging viewer
  for i in amide
  do
    sudo apt install -y $i
  done
  
  #dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng-dev tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    sudo apt install -y $i
  done
  
  #documentation generator
  for i in doxygen graphviz
  do
    sudo apt install -y $i
  done
else
  #Uninstall work
  for i in amide
  do
    sudo apt purge -y $i
  done
  
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng-dev tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    sudo apt purge -y $i
  done
  
  #documentation generator
  for i in doxygen graphviz
  do
    sudo apt purge -y $i
  done
fi

for i in update upgrade full-upgrade autoremove clean
do
  sudo apt $i -y
done

exit 0
