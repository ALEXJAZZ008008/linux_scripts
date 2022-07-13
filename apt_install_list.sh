#!/bin/bash

if [ $# == 1 ]
then
  echo -e "Arguments detected"
  
  if [ $1 == "-h" -o $1 == "--help" ]
  then
    echo -e "Options:\n\nNo arguments to install default packages\n-p or --purge to uninstall all packages.\n-a or --all to install all packages.\n\nElse enter true or false to select from following package list:\nPYTHON\nPYTHONTHREE\nTOOLS\nKDE\nEMULATION\nNETWORKING\nPYPY\nSOURCECONTROL\nCMAKE\nIDE\nFIREFOX\nTOR\nCHROMIUM\nLIBREOFFICE\nVLC\nMEDIA\nSTEAM\n\nSNAP\nPYPYTHREE\nGIT\nCLION\nPYCHARM\nSLACK\nDISCORD\nSPOTIFY\n\nWORKDEPENDENCIES\n"

    exit 0
  else
    if [ $1 == "-p" -o $1 == "--purge" ]
    then
      echo -e "Argument: -p or --purge, uninstalling all packages...\n"

      PYTHON=false
      PYTHONTHREE=false
      TOOLS=false
      KDE=false
      EMULATION=false
      NETWORKING=false
      PYPY=false
      SOURCECONTROL=false
      CMAKE=false
      IDE=false
      FIREFOX=false
      TOR=false
      CHROMIUM=false
      LIBREOFFICE=false
      VLC=false
      MEDIA=false
      STEAM=false

      SNAP=false
      PYPYTHREE=false
      GIT=false
      CLION=false
      PYCHARM=false
      SLACK=false
      DISCORD=false
      SPOTIFY=false

      WORKDEPENDENCIES=false
    else
      if [ $1 == "-a" -o $1 == "--all" ]
      then
        echo -e "Argument: -a or --all, installing all packages...\n"

        PYTHON=true
        PYTHONTHREE=true
        TOOLS=true
        KDE=true
        EMULATION=true
        NETWORKING=true
        PYPY=true
        SOURCECONTROL=true
        CMAKE=true
        IDE=true
        FIREFOX=true
        TOR=true
        CHROMIUM=true
        LIBREOFFICE=true
        VLC=true
        MEDIA=true
        STEAM=true

        SNAP=true
        PYPYTHREE=true
        GIT=true
        CLION=true
        PYCHARM=true
        SLACK=true
        DISCORD=true
        SPOTIFY=true

        WORKDEPENDENCIES=true
      fi
    fi
  fi
else
  if [ $# == 26 ]
  then
    echo -e "Argument: user defined, installing selected packages...\n"
    
    PYTHON=$1
    PYTHONTHREE=$2
    TOOLS=$3
    KDE=$4
    EMULATION=$5
    NETWORKING=$6
    PYPY=$7
    SOURCECONTROL=$8
    CMAKE=$9
    IDE=$10
    FIREFOX=$11
    TOR=$12
    CHROMIUM=$13
    LIBREOFFICE=$14
    VLC=$15
    MEDIA=$16
    STEAM=$17
    
    SNAP=$18
    PYPYTHREE=$19
    GIT=$20
    CLION=$21
    PYCHARM=$22
    SLACK=$23
    DISCORD=$24
    SPOTIFY=$25
    
    WORKDEPENDENCIES=$26
  else
    echo -e "Argument: no argument, installing default packages...\n"
    
    PYTHON=true
    PYTHONTHREE=true
    TOOLS=true
    KDE=true
    EMULATION=true
    NETWORKING=true
    PYPY=false
    SOURCECONTROL=false
    CMAKE=false
    IDE=false
    FIREFOX=true
    TOR=false
    CHROMIUM=false
    LIBREOFFICE=true
    VLC=true
    MEDIA=true
    STEAM=false
    
    SNAP=true
    PYPYTHREE=false
    GIT=false
    CLION=false
    PYCHARM=false
    SLACK=false
    DISCORD=false
    SPOTIFY=false
    
    WORKDEPENDENCIES=false
  fi
fi

echo -e "Changes to be made:"

if [ $PYTHON = true ]
then
  echo -e "Install python"
else
  echo -e "Uninstall python"
fi

if [ $PYTHONTHREE = true ]
then
  echo -e "Install python3"
else
  echo -e "Uninstall python3"
fi

if [ $TOOLS = true ]
then
  echo -e "Install tools"
else
  echo -e "Uninstall tools"
fi

if [ $KDE = true ]
then
  echo -e "Install kde"
else
  echo -e "Uninstall kde"
fi

if [ $EMULATION = true ]
then
  echo -e "Install emulation"
else
  echo -e "Uninstalling emulation"
fi

if [ $NETWORKING = true ]
then
  echo -e "Install networking"
else
  echo -e "Uninstall networking"
fi

if [ $PYPY = true ]
then
  echo -e "Install pypy"
else
  echo -e "Uninstall pypy"
fi

if [ $SOURCECONTROL = true ]
then
  echo -e "Install source control"
else
  echo -e "Uninstall source control"
fi

if [ $CMAKE = true ]
then
  echo -e "Install cmake"
else
  echo -e "Uninstall cmake"
fi

if [ $IDE = true ]
then
  echo -e "Install ide"
else
  echo -e "Uninstall ide"
fi

if [ $FIREFOX = true ]
then
  echo -e "Install firefox"
else
  echo -e "Uninstall firefox"
fi

if [ $TOR = true ]
then
  echo -e "Install tor"
else
  echo -e "Uninstall tor"
fi

if [ $CHROMIUM = true ]
then
  echo -e "Install chromium"
else
  echo -e "Uninstall chromium"
fi

if [ $LIBREOFFICE = true ]
then
  echo -e "Install libreoffice"
else
  echo -e "Uninstall libreoffice"
fi

if [ $VLC = true ]
then
  echo -e "Install vlc"
else
  echo -e "Uninstall vlc"
fi

if [ $MEDIA = true ]
then
  echo -e "Install media"
else
  echo -e "Uninstall media"
fi

if [ $STEAM = true ]
then
  echo -e "Install steam"
else
  echo -e "Uninstall steam"
fi

echo -e ""

if [ $SNAP = true ]
then
  echo -e "Install snap"
else
  echo -e "Uninstall snap"
fi

if [ $PYPYTHREE = true ]
then
  echo -e "Install pypy3"
else
  echo -e "Uninstall pypy3"
fi

if [ $GIT = true ]
then
  echo -e "Install git"
else
  echo -e "Uninstall git"
fi

if [ $CLION = true ]
then
  echo -e "Install clion"
else
  echo -e "Uninstall clion"
fi

if [ $PYCHARM = true ]
then
  echo -e "Install pycharm"
else
  echo -e "Uninstall pycharm"
fi

if [ $SLACK = true ]
then
  echo -e "Install slack"
else
  echo -e "Uninstall slack"
fi

if [ $DISCORD = true ]
then
  echo -e "Install discord"
else
  echo -e "Uninstall discord"
fi

if [ $SPOTIFY = true ]
then
  echo -e "Install spotify"
else
  echo -e "Uninstall spotify"
fi

echo -e ""

if [ $WORKDEPENDENCIES = true ]
then
  echo -e "Install work dependencies"
else
  echo -e "Uninstall work dependencies"
fi

while true
do
    echo -e ""
    read -p "Do you wish to continue? [y/n] " yn
    
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 1;;
        * ) echo -e "Please answer yes or no.";;
    esac
done 

echo -e "\n\nUpdating...\n"

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

for i in refresh
do
  snap $i
done

echo -e "\nDone!\n"

echo -e "\n\nInstalling default packages...\n"

#Install default
for i in linux-headers-generic sudo build-essential snapd
do
  apt install -y $i
done

echo -e "\nDone!\n"

if [ $PYTHON = true ]
then
  echo -e "\n\nInstalling python...\n"
  
  #Install python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling python...\n"
  
  #Uninstall python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $PYTHONTHREE = true ]
then
  echo -e "\n\nInstalling python3...\n"
  
  #Install python3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra python3-setuptools python3-venv
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling python3...\n"
  
  #Uninstall python3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra python3-setuptools python3-venv
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $TOOLS = true ]
then
  echo -e "\n\nInstalling tools...\n"
  
  #Install tools
  for i in neofetch gparted curl unrar htop aptitude exfat-fuse exfat-utils btrfs-tools redshift tree
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling tools...\n"
  
  #Uninstall tools
  for i in neofetch gparted curl unrar htop aptitude exfat-fuse exfat-utils btrfs-tools redshift tree
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $KDE = true ]
then
  echo -e "\n\nInstalling kde...\n"
  
  #Install kde
  for i in sddm sddm-theme-breeze plasma-desktop kubuntu-desktop kde-full gnome-tweak-tool
  do
    apt install -y $i
  done
  
  apt install -y $(check-language-support)
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling kde...\n"
  
  #Uninstall kde
  for i in sddm sddm-theme-breeze plasma-desktop kubuntu-desktop kde-full gnome-tweak-tool
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $EMULATION = true ]
then
  echo -e "\n\nInstalling emulation...\n"
  
  #Install emulation
  for i in wine-stable winetricks
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling emulation...\n"
  
  #Uninstall emulation
  for i in wine-stable winetricks
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $NETWORKING = true ]
then
  echo -e "\n\nInstalling networking...\n"
  
  #Install networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome net-tools
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling networking...\n"
  
  #Uninstall networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome net-tools
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $PYPY = true ]
then
  echo -e "\n\nInstalling pypy...\n"
  
  #Install pypy
  for i in pypy
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling pypy...\n"
  
  #Uninstall pypy
  for i in pypy
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $SOURCECONTROL = true ]
then
  echo -e "\n\nInstalling source control...\n"
  
  #Install source control
  for i in git
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling source control...\n"
  
  #Uninstall source control
  for i in git
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $CMAKE = true ]
then
  echo -e "\n\nInstalling cmake...\n"
  
  #Install cmake
  for i in cmake-gui cmake-qt-gui
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling cmake...\n"
  
  #Uninstall cmake
  for i in cmake-gui cmake-qt-gui
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $IDE = true ]
then
  echo -e "\n\nInstalling ide...\n"
  
  #Install ide
  for i in ccache qtcreator codeblocks spyder octave arduino
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling ide...\n"
  
  #Uninstall ide
  for i in ccache qtcreator codeblocks spyder octave arduino
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $FIREFOX = true ]
then
  echo -e "\n\nInstalling firefox...\n"
  
  #Install firefox
  for i in firefox
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling firefox...\n"
  
  #Uninstall firefox
  for i in firefox
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $TOR = true ]
then
  echo -e "\n\nInstalling tor...\n"
  
  #Install tor
  for i in tor torbrowser-launcher apt-transport-tor
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling tor...\n"
  
  #Uninstall tor
  for i in tor torbrowser-launcher apt-transport-tor
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $CHROMIUM = true ]
then
  echo -e "\n\nInstalling chromium...\n"
  
  #Install chromium
  for i in chromium-browser
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling chromium...\n"
  
  #Uninstall chromium
  for i in chromium-browser
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $LIBREOFFICE = true ]
then
  echo -e "\n\nInstalling libreoffice...\n"
  
  #Install libreoffice
  for i in libreoffice
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling libreoffice...\n"
  
  #Uninstall libreoffice
  for i in libreoffice
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $VLC = true ]
then
  echo -e "\n\nInstalling vlc...\n"
  
  #Install vlc
  for i in vlc
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling vlc...\n"
  
  #Uninstall vlc
  for i in vlc
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $MEDIA = true ]
then
  echo -e "\n\nInstalling media...\n"
  
  #Install media
  for i in gimp audacity blender
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling media...\n"
  
  #Uninstall media
  for i in gimp audacity blender
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $STEAM = true ]
then
  echo -e "\n\nInstalling steam...\n"
  
  #Install steam
  for i in steam-installer
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling steam...\n"
  
  #Uninstall steam
  for i in steam-installer
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

echo -e "\n\nUpdating...\n"

for i in update upgrade full-upgrade autoremove clean
do
  sudo apt $i -y
done

for i in refresh
do
  snap $i
done

echo -e "\nDone!\n"

if [ $SNAP = true ]
then
  echo -e "\n\nInstalling snap...\n"
  
  #Install snap
  for i in "snap-store --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling snap...\n"
  
  #Remove snap
  for i in "snap-store --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $PYPYTHREE = true ]
then
  echo -e "\n\nInstalling pypy3...\n"
   
  #Install pypy3
  for i in "pypy3 --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling pypy3...\n"
  
  #Remove pypy3
  for i in "pypy3 --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $GIT = true ]
then
  echo -e "\n\nInstalling git...\n"
  
  #Install git
  for i in "gitkraken --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling git...\n"
  
  #Remove git
  for i in "gitkraken --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $CLION = true ]
then
  echo -e "\n\nInstalling clion...\n"
  
  #Install clion
  for i in "clion --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling clion...\n"
  
  #Remove clion
  for i in "clion --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $PYCHARM = true ]
then
  echo -e "\n\nInstalling pycharm...\n"
  
  #Install pycharm
  for i in "pycharm-community --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  for i in "pycharm-professional --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling pycharm...\n"
  
  #Remove pycharm
  for i in "pycharm-community --stable --classic"
  do
    snap remove $i
  done
  
  for i in "pycharm-professional --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $SLACK = true ]
then
  echo -e "\n\nInstalling slack...\n"
  
  #Install slack
  for i in "slack --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling slack...\n"
  
  #Remove slack
  for i in "slack --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $DISCORD = true ]
then
  echo -e "\n\nInstalling discord...\n"
  
  #Install discord
  for i in "discord --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling discord...\n"
  
  #Remove discord
  for i in "discord --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $SPOTIFY = true ]
then
  echo -e "\n\nInstalling spotify...\n"

  #Install spotify
  for i in "spotify --stable --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling spotify...\n"
  
  #Remove spotify
  for i in "spotify --stable --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

echo -e "\n\nUpdating...\n"

for i in update upgrade full-upgrade autoremove clean
do
  sudo apt $i -y
done

for i in refresh
do
  snap $i
done

echo -e "\nDone!\n"

if [ $WORKDEPENDENCIES = true ]
then
  echo -e "\n\nInstalling work dependencies...\n"
  
  echo -e "\n\nUpdating...\n"
  
  #Install work dependencies
  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nInstalling amide...\n"
  
  #Install medical imaging viewer compatible with hv for stir and nii for nifty*
  for i in amide
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling stir dependencies...\n"

  #Install dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng++-dev libpng-dev libpng-tools libpng16-16 tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev libvtkgdcm-cil libvtkgdcm-java libvtkgdcm-tools libvtkgdcm2-dev libvtkgdcm2.8 python-vtkgdcm libgdcm-cil libgdcm-java libgdcm-tools libgdcm2-dev libgdcm2.8
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling doxygen...\n"

  #Install documentation generator
  for i in doxygen graphviz graphviz-dev libgraphviz-dev python-pygraphviz python3-graphviz python-pydot python3-pydot
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling ffmpeg...\n"

  #Install video codec for jrmomo
  for i in ffmpeg
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling nifty dep...\n"

  #Install qt for nifty*
  for i in libqt5svg5 libqt5svg5-dev libqt5webkit5 libqt5webkit5-dev libqt5xmlpatterns5 libqt5xmlpatterns5-dev qttools5-dev
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling jrmomo dep...\n"

  #Install python for jrmomo
  for i in python-numpy python-scipy python-matplotlib python-nibabel python3-numpy python3-scipy python3-matplotlib python3-nibabel ipython python-pandas python-sympy python-nose libopenexr-dev openexr
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling niftyreg dep...\n"

  #Install dep for niftyreg
  for i in ocl-icd-dev ocl-icd-libopencl1 ocl-icd-opencl-dev opencl-headers 
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling sirf dep...\n"

  #Install dep for sirf
  for i in libomp-dev cython cython3 libhdf5-dev hdf5-tools python3-hdf5storage libace-6.4.5 libace-dev libace-tkreactor-6.4.5 libace-tkreactor-dev libace-xtreactor-6.4.5 libace-xtreactor-dev libopenblas-base libopenblas-dev
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nInstalling matlab dep...\n"

  #Install dep for matlab
  for i in libgmp-dev libmpfr-dev libmpc-dev gcc-6 g++-6 g++-6-multilib gfortran-6
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"
  
  echo -e "\n\nInstalling root dep...\n"

  #Install dep for root
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libjpeg-dev libjpeg-progs python gfortran openssl openssl1.0 python-openssl python3-openssl libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
  
  echo -e "\n\nInstalling xcat parallel...\n"
  
  #Install xcat parallel
  for i in parallel
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nUpdating...\n"

  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done
  
  echo -e "\nDone!\n"
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling work dependencies...\n"
  
  echo -e "\n\nUpdating...\n"
  
  #Install work dependencies
  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling amide...\n"
  
  #Uninstall medical imaging viewer compatible with hv for stir and nii for nifty*
  for i in amide
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling stir dependencies...\n"

  #Uninstall dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng++-dev libpng-dev libpng-tools libpng16-16 tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev libvtkgdcm-cil libvtkgdcm-java libvtkgdcm-tools libvtkgdcm2-dev libvtkgdcm2.8 python-vtkgdcm libgdcm-cil libgdcm-java libgdcm-tools libgdcm2-dev libgdcm2.8
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling doxygen...\n"

  #Uninstall documentation generator
  for i in doxygen graphviz graphviz-dev libgraphviz-dev python-pygraphviz python3-graphviz python-pydot python3-pydot
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling ffmpeg...\n"

  #Uninstall video codec for jrmomo
  for i in ffmpeg
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling nifty dep...\n"

  #Uninstall qt for nifty*
  for i in libqt5svg5 libqt5svg5-dev libqt5webkit5 libqt5webkit5-dev libqt5xmlpatterns5 libqt5xmlpatterns5-dev qttools5-dev
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling jrmomo dep...\n"

  #Uninstall python for jrmomo
  for i in python-numpy python-scipy python-matplotlib python-nibabel python3-numpy python3-scipy python3-matplotlib python3-nibabel ipython python-pandas python-sympy python-nose libopenexr-dev openexr
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling niftyreg dep...\n"

  #Uninstall dep for niftyreg
  for i in ocl-icd-dev ocl-icd-libopencl1 ocl-icd-opencl-dev opencl-headers 
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling sirf dep...\n"

  #Uninstall dep for sirf
  for i in libomp-dev cython cython3 libhdf5-dev hdf5-tools python3-hdf5storage libace-6.4.5 libace-dev libace-tkreactor-6.4.5 libace-tkreactor-dev libace-xtreactor-6.4.5 libace-xtreactor-dev libopenblas-base libopenblas-dev
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling matlab dep...\n"

  #Uninstall dep for matlab
  for i in libgmp-dev libmpfr-dev libmpc-dev gcc-6 g++-6 g++-6-multilib gfortran-6
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"
  
  echo -e "\n\nUninstalling root dep...\n"

  #Uninstall dep for root
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libjpeg-dev libjpeg-progs python gfortran openssl openssl1.0 python-openssl python3-openssl libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
  
  echo -e "\n\nUninstalling xcat dep...\n"
  
  #Uninstall xcat parallel
  for i in parallel
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nUpdating...\n"

  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done
  
  echo -e "\nDone!\n"
  
  echo -e "\nDone!\n"
fi

echo -e "\n\nUpdating...\n"

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

for i in refresh
do
  snap $i
done

echo -e "\nDone!\n"

exit 0
