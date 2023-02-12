#!/bin/bash

if [ $# == 1 ]
then
  echo -e "Arguments detected"
  
  if [ $1 == "-h" -o $1 == "--help" ]
  then
    echo -e "Options:\n\nNo arguments to install default packages\n-p or --purge to uninstall all packages.\n-a or --all to install all packages.\n\nElse enter true or false to select from following package list:\nPYTHON\nPYTHONTHREE\nTOOLS\nITHREE\nXFCE\nEMULATION\nNETWORKING\nPYPY\nSOURCECONTROL\nCMAKE\nIDE\nWTHREEM\nFIREFOX\nTOR\nCHROMIUM\nPDF\nLIBREOFFICE\nVLC\nMEDIA\nSTEAM\n\nSNAP\nPYPYTHREE\nGIT\nPOWERSHELL\nNOTEPADPLUSPLUS\nCLION\nPYCHARM\nSLACK\nDISCORD\nSKYPE\nSPOTIFY\n\nWORKDEPENDENCIES\n"

    exit 0
  else
    if [ $1 == "-p" -o $1 == "--purge" ]
    then
      echo -e "Argument: -p or --purge, uninstalling all packages...\n"

      PYTHON=false
      PYTHONTHREE=false
      TOOLS=false
      ITHREE=false
      XFCE=false
      EMULATION=false
      NETWORKING=false
      PYPY=false
      SOURCECONTROL=false
      CMAKE=false
      IDE=false
      WTHREEM=false
      FIREFOX=false
      TOR=false
      CHROMIUM=false
      PDF=false
      LIBREOFFICE=false
      VLC=false
      MEDIA=false
      STEAM=false

      SNAP=false
      PYPYTHREE=false
      GIT=false
      POWERSHELL=false
      NOTEPADPLUSPLUS=false
      CLION=false
      PYCHARM=false
      SLACK=false
      DISCORD=false
      SKYPE=false
      SPOTIFY=false

      WORKDEPENDENCIES=false
    else
      if [ $1 == "-a" -o $1 == "--all" ]
      then
        echo -e "Argument: -a or --all, installing all packages...\n"

        PYTHON=true
        PYTHONTHREE=true
        TOOLS=true
        ITHREE=true
        XFCE=true
        EMULATION=true
        NETWORKING=true
        PYPY=true
        SOURCECONTROL=true
        CMAKE=true
        IDE=true
        WTHREEM=true
        FIREFOX=true
        TOR=true
        CHROMIUM=true
        PDF=true
        LIBREOFFICE=true
        VLC=true
        MEDIA=true
        STEAM=true

        SNAP=true
        PYPYTHREE=true
        GIT=true
        POWERSHELL=true
        NOTEPADPLUSPLUS=true
        CLION=true
        PYCHARM=true
        SLACK=true
        DISCORD=true
        SKYPE=true
        SPOTIFY=true

        WORKDEPENDENCIES=true
      fi
    fi
  fi
else
  if [ $# == 32 ]
  then
    echo -e "Argument: user defined, installing selected packages...\n"
    
    PYTHON=$1
    PYTHONTHREE=$2
    TOOLS=$3
    ITHREE=$4
    XFCE=$5
    EMULATION=$6
    NETWORKING=$7
    PYPY=$8
    SOURCECONTROL=$9
    CMAKE=$10
    IDE=$11
    WTHREEM=$12
    FIREFOX=$13
    TOR=$14
    CHROMIUM=$15
    PDF=$16
    LIBREOFFICE=$17
    VLC=$18
    MEDIA=$19
    STEAM=$20
    
    SNAP=$21
    PYPYTHREE=$22
    GIT=$23
    POWERSHELL=$24
    NOTEPADPLUSPLUS=$25
    CLION=$26
    PYCHARM=$27
    SLACK=$28
    DISCORD=$29
    SKYPE=$30
    SPOTIFY=$31
    
    WORKDEPENDENCIES=$33
  else
    echo -e "Argument: no argument, installing default packages...\n"
    
    PYTHON=true
    PYTHONTHREE=true
    TOOLS=false
    ITHREE=false
    XFCE=true
    EMULATION=false
    NETWORKING=true
    PYPY=false
    SOURCECONTROL=false
    CMAKE=false
    IDE=false
    WTHREEM=false
    FIREFOX=true
    TOR=false
    CHROMIUM=true
    PDF=false
    LIBREOFFICE=true
    VLC=true
    MEDIA=false
    STEAM=true
    
    SNAP=true
    PYPYTHREE=false
    GIT=false
    POWERSHELL=false
    NOTEPADPLUSPLUS=false
    CLION=false
    PYCHARM=false
    SLACK=false
    DISCORD=true
    SKYPE=true
    SPOTIFY=true
    
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

if [ $ITHREE = true ]
then
  echo -e "Install i3"
else
  echo -e "Uninstall i3"
fi

if [ $XFCE = true ]
then
  echo -e "Install xfce"
else
  echo -e "Uninstall xfce"
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

if [ $WTHREEM = true ]
then
  echo -e "Install w3m"
else
  echo -e "Uninstall w3m"
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

if [ $PDF = true ]
then
  echo -e "Install pdf"
else
  echo -e "Uninstall pdf"
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

if [ $POWERSHELL = true ]
then
  echo -e "Install powershell"
else
  echo -e "Uninstall powershell"
fi

if [ $NOTEPADPLUSPLUS = true ]
then
  echo -e "Install notepad"
else
  echo -e "Uninstall notepad"
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

if [ $SKYPE = true ]
then
  echo -e "Install skype"
else
  echo -e "Uninstall skype"
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

echo -e "\n\n\nUpdating...\n"

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
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling python3...\n"
  
  #Uninstall python3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $TOOLS = true ]
then
  echo -e "\n\nInstalling tools...\n"
  
  #Install tools
  for i in neofetch upower gparted curl cloc
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling tools...\n"
  
  #Uninstall tools
  for i in neofetch upower gparted curl cloc
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $ITHREE = true ]
then
  echo -e "\n\nInstalling i3...\n"
  
  #Install i3
  for i in i3
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling i3...\n"
  
  #Uninstall i3
  for i in i3
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $XFCE = true ]
then
  echo -e "\n\nInstalling XFCE...\n"
  
  #Install xfce
  for i in lightdm xfce4
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling xfce...\n"
  
  #Uninstall xfce
  for i in lightdm xfce4
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $EMULATION = true ]
then
  echo -e "\n\nInstalling emulation...\n"
  
  #Install emulation
  for i in virtualbox wine-development
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling emulation...\n"
  
  #Uninstall emulation
  for i in virtualbox wine-development
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $NETWORKING = true ]
then
  echo -e "\n\nInstalling networking...\n"
  
  #Install networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling networking...\n"
  
  #Uninstall networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
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
  for i in git subversion mercurial
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling source control...\n"
  
  #Uninstall source control
  for i in git subversion mercurial
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
  for i in ccache qtcreator codeblocks spyder octave
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling ide...\n"
  
  #Uninstall ide
  for i in ccache qtcreator codeblocks spyder octave
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $WTHREEM = true ]
then
  echo -e "\n\nInstalling w3m...\n"
  
  #Install w3m
  for i in w3m
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling w3m...\n"
  
  #Uninstall w3m
  for i in w3m
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

if [ $PDF = true ]
then
  echo -e "\n\nInstalling pdf...\n"
  
  #Install pdf viewer
  for i in zathura zathura-pdf-poppler
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling pdf...\n"
  
  #Uninstall pdf viewer
  for i in zathura zathura-pdf-poppler
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
  for i in "snap-store --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling snap...\n"
  
  #Remove snap
  for i in "snap-store --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $PYPYTHREE = true ]
then
  echo -e "\n\nInstalling pypy3...\n"
   
  #Install pypy3
  for i in "pypy3 --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling pypy3...\n"
  
  #Remove pypy3
  for i in "pypy3 --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $GIT = true ]
then
  echo -e "\n\nInstalling git...\n"
  
  #Install git
  for i in "gitkraken --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling git...\n"
  
  #Remove git
  for i in "gitkraken --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $POWERSHELL = true ]
then
  echo -e "\n\nInstalling powershell...\n"
  
  #Install powershell
  for i in "powershell --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling powershell...\n"
  
  #Remove powershell
  for i in "powershell --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $NOTEPADPLUSPLUS = true ]
then
  echo -e "\n\nInstalling notepad...\n"
  
  #Install notepad
  for i in "notepad-plus-plus --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling notepad...\n"
  
  #Remove notepad
  for i in "notepad-plus-plus --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $CLION = true ]
then
  echo -e "\n\nInstalling clion...\n"
  
  #Install clion
  for i in "clion --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling clion...\n"
  
  #Remove clion
  for i in "clion --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $PYCHARM = true ]
then
  echo -e "\n\nInstalling pycharm...\n"
  
  #Install pycharm
  for i in "pycharm-professional --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling pycharm...\n"
  
  #Remove pycharm
  for i in "pycharm-professional --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $SLACK = true ]
then
  echo -e "\n\nInstalling slack...\n"
  
  #Install slack
  for i in "slack --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling slack...\n"
  
  #Remove slack
  for i in "slack --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $DISCORD = true ]
then
  echo -e "\n\nInstalling discord...\n"
  
  #Install discord
  for i in "discord --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling discord...\n"
  
  #Remove discord
  for i in "discord --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $SKYPE = true ]
then
  echo -e "\n\nInstalling skype...\n"
  
  #Install skype
  for i in "skype --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling skype...\n"
  
  #Remove skype
  for i in "skype --edge --classic"
  do
    snap remove $i
  done
  
  echo -e "\nDone!\n"
fi

if [ $SPOTIFY = true ]
then
  echo -e "\n\nInstalling spotify...\n"

  #Install spotify
  for i in "spotify --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
  
  echo -e "\nDone!\n"
else
  echo -e "\n\nUninstalling spotify...\n"
  
  #Remove spotify
  for i in "spotify --edge --classic"
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
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng-dev tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling doxygen...\n"

  #Install documentation generator
  for i in doxygen graphviz
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
  for i in python-numpy python-scipy python-matplotlib python-nibabel python3-numpy python3-scipy python3-matplotlib python3-nibabel ipython python-pandas python-sympy python-nose
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
  for i in libomp-dev
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
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng libjpeg python gfortran openssl-dev libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base
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
  
  #Unstall medical imaging viewer compatible with hv for stir and nii for nifty*
  for i in amide
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling stir dependencies...\n"

  #Unstall dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng-dev tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling doxygen...\n"

  #Unstall documentation generator
  for i in doxygen graphviz
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling ffmpeg...\n"

  #Unstall video codec for jrmomo
  for i in ffmpeg
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling nifty dep...\n"

  #Unstall qt for nifty*
  for i in libqt5svg5 libqt5svg5-dev libqt5webkit5 libqt5webkit5-dev libqt5xmlpatterns5 libqt5xmlpatterns5-dev qttools5-dev
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling jrmomo dep...\n"

  #Unstall python for jrmomo
  for i in python-numpy python-scipy python-matplotlib python-nibabel python3-numpy python3-scipy python3-matplotlib python3-nibabel ipython python-pandas python-sympy python-nose
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling niftyreg dep...\n"

  #Unstall dep for niftyreg
  for i in ocl-icd-dev ocl-icd-libopencl1 ocl-icd-opencl-dev opencl-headers 
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling sirf dep...\n"

  #Unstall dep for sirf
  for i in libomp-dev
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling matlab dep...\n"

  #Unstall dep for matlab
  for i in libgmp-dev libmpfr-dev libmpc-dev gcc-6 g++-6 g++-6-multilib gfortran-6
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"
  
  echo -e "\n\nUninstalling root dep...\n"

  #Uninstall dep for root
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng libjpeg python gfortran openssl-dev libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base
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
