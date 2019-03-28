#!/bin/bash

if [ $# == 1 -a $1 == "-h" -o $1 == "--help" ]
then
  echo -e "Options:\n\nNo arguments to install default packages\n-a or --all to install all packages.\n\nElse enter true or false to select from following package list:\npython\npython_3\ntools\ncloc\ni3\nkde_desktop_enviroment\nemulation\nnetworking\npypy\ngit\ncmake_gui\nide\nw3m\nfirefox\ntor\nchromium\npdf_viewer\nlibre_office\nvlc\nmedia_editors\nsteam_linux\n\nsnap\npypy3\npowershell\nnotepad\nclion\npycharm\nslack\nskype\ndiscord\nspotify\n\nwork"

  exit 0
else
  if [ $# == 1 -a $1 == "-a" -o $1 == "--all" ]
  then
    python=true
    python_3=true
    tools=true
    cloc=true
    i3=true
    kde_desktop_enviroment=true
    emulation=true
    networking=true
    pypy=true
    git=true
    cmake_gui=true
    ide=true
    w3m=true
    firefox=true
    tor=true
    chromium=true
    pdf_viewer=true
    libre_office=true
    vlc=true
    media_editors=true
    steam=true

    snap=true
    pypy3=true
    powershell=true
    notepad=true
    clion=true
    pycharm=true
    slack=true
    skype=true
    discord=true
    spotify=true

    work=true
  else
    if [ $# -ne 32 ]
    then
      python=true
      python_3=true
      tools=true
      cloc=false
      i3=true
      kde_desktop_enviroment=true
      emulation=true
      networking=true
      pypy=false
      git=false
      cmake_gui=false
      ide=false
      w3m=true
      firefox=false
      tor=false
      chromium=true
      pdf_viewer=true
      libre_office=true
      vlc=true
      media_editors=true
      steam=true
      
      snap=true
      pypy3=false
      powershell=false
      notepad=true
      clion=false
      pycharm=false
      slack=true
      skype=true
      discord=true
      spotify=true

      work=false
    else
      python=$1
      python_3=$2
      tools=$3
      cloc=$4
      i3=$5
      kde_desktop_enviroment=$6
      emulation=$7
      networking=$8
      pypy=$9
      git=$10
      cmake_gui=$11
      ide=$12
      w3m=$13
      firefox=$14
      tor=$15
      chromium=$16
      pdf_viewer=$17
      libre_office=$18
      vlc=$19
      media_editors=$20
      steam=$21

      snap=$22
      pypy3=$23
      powershell=$24
      notepad=$25
      clion=$26
      pycharm=$27
      slack=$28
      skype=$29
      discord=$30
      spotify=$31

      work=$32
    fi
  fi
fi

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

for i in refresh
do
  snap $i
done

#Build
for i in linux-headers-generic sudo build-essential snapd
do
  apt install -y $i
done

if [ $python = true ]
then
  #Install Python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra
  do
    apt install -y $i
  done
else
  #Uninstall Python
  for i in python python-dev python-pip python-virtualenv python-distutils-extra
  do
    apt purge -y $i
  done
fi

if [ $python_3 = true ]
then
  #Install Python 3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra
  do
    apt install -y $i
  done
else
  #Uninstall Python 3
  for i in python3 python3-dev python3-pip python3-virtualenv python3-distutils python3-distutils-extra
  do
    apt purge -y $i
  done
fi

if [ $tools = true ]
then
  #Install tools
  for i in neofetch upower gparted
  do
    apt install -y $i
  done
else
  #Uninstall tools
  for i in neofetch upower gparted
  do
    apt purge -y $i
  done
fi

if [ $cloc = true ]
then
  #Install CLOC
  for i in cloc
  do
    apt install -y $i
  done
else
  #Uninstall CLOC
  for i in cloc
  do
    apt purge -y $i
  done
fi

if [ $i3 = true ]
then
  #Install i3
  for i in i3
  do
    apt install -y $i
  done
else
  #Uninstall i3
  for i in i3
  do
    apt purge -y $i
  done
fi

if [ $kde_desktop_enviroment = true ]
then
  #Install KDE desktop enviroment
  for i in sddm kde-full
  do
    apt install -y $i
  done
else
  #Uninstall KDE desktop enviroment
  for i in sddm kde-full
  do
    apt purge -y $i
  done
fi

if [ $emulation = true ]
then
  #Install emulation
  for i in virtualbox wine-development
  do
    apt install -y $i
  done
else
  #Uninstall emulation
  for i in virtualbox wine-development
  do
    apt purge -y $i
  done
fi

if [ $networking = true ]
then
  #Install Networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
  do
    apt install -y $i
  done
else
  #Uninstall Networking
  for i in network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
  do
    apt purge -y $i
  done
fi

if [ $pypy = true ]
then
  #Install Pypy
  for i in pypy
  do
    apt install -y $i
  done
else
  #Uninstall Pypy
  for i in pypy
  do
    apt purge -y $i
  done
fi

if [ $git = true ]
then
  #Install git
  for i in git subversion mercurial
  do
    apt install -y $i
  done
else
  #Uninstall git
  for i in git subversion mercurial
  do
    apt purge -y $i
  done
fi

if [ $cmake_gui = true ]
then
  #Install CMake GUI
  for i in cmake-gui cmake-qt-gui
  do
    apt install -y $i
  done
else
  #Uninstall CMake GUI
  for i in cmake-gui cmake-qt-gui
  do
    apt purge -y $i
  done
fi

if [ $ide = true ]
then
  #Install IDE
  for i in qtcreator codeblocks spyder octave
  do
    apt install -y $i
  done
else
  #Uninstall IDE
  for i in qtcreator codeblocks spyder octave
  do
    apt purge -y $i
  done
fi

if [ $w3m = true ]
then
  #Install w3m
  for i in w3m
  do
    apt install -y $i
  done
else
  #Uninstall w3m
  for i in w3m
  do
    apt purge -y $i
  done
fi

if [ $firefox = true ]
then
  #Install Firefox
  for i in firefox
  do
    apt install -y $i
  done
else
  #Uninstall Firefox
  for i in firefox
  do
    apt purge -y $i
  done
fi

if [ $tor = true ]
then
  #Install Tor
  for i in tor torbrowser-launcher apt-transport-tor
  do
    apt install -y $i
  done
else
  #Uninstall Tor
  for i in tor torbrowser-launcher apt-transport-tor
  do
    apt purge -y $i
  done
fi

if [ $chromium = true ]
then
  #Install Chromium
  for i in chromium-browser
  do
    apt install -y $i
  done
else
  #Uninstall Chromium
  for i in chromium-browser
  do
    apt purge -y $i
  done
fi

if [ $pdf_viewer = true ]
then
  #Install PDF viewer
  for i in zathura zathura-pdf-poppler
  do
    apt install -y $i
  done
else
  #Uninstall PDF viewer
  for i in zathura zathura-pdf-poppler
  do
    apt purge -y $i
  done
fi

if [ $libre_office = true ]
then
  #Install LibreOffice
  for i in libreoffice
  do
    apt install -y $i
  done
else
  #Uninstall LibreOffice
  for i in libreoffice
  do
    apt purge -y $i
  done
fi

if [ $vlc = true ]
then
  #Install VLC
  for i in vlc
  do
    apt install -y $i
  done
else
  #Uninstall VLC
  for i in vlc
  do
    apt purge -y $i
  done
fi

if [ $media_editors = true ]
then
  #Install media editors
  for i in gimp audacity blender
  do
    apt install -y $i
  done
else
  #Uninstall media editors
  for i in gimp audacity blender
  do
    apt purge -y $i
  done
fi

if [ $steam = true ]
then
  #Install Steam(Linux)
  for i in steam-installer
  do
    apt install -y $i
  done
else
  #Uninstall Steam(Linux)
  for i in steam-installer
  do
    apt purge -y $i
  done
fi

for i in update upgrade full-upgrade autoremove clean
do
  sudo apt $i -y
done

for i in refresh
do
  snap $i
done

if [ $snap = true ]
then
  #Install Snap Store
  for i in "snap-store --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Snap Store
  for i in "snap-store --edge --classic"
  do
    snap remove $i
  done
fi

if [ $pypy3 = true ]
then
  #Install pypy3
  for i in "pypy3 --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove pypy3
  for i in "pypy3 --edge --classic"
  do
    snap remove $i
  done
fi

if [ $powershell = true ]
then
  #Install Powershell
  for i in "powershell --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Powershell
  for i in "powershell --edge --classic"
  do
    snap remove $i
  done
fi

if [ $notepad = true ]
then
  #Install Notepad++
  for i in "notepad-plus-plus --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Notepad++
  for i in "notepad-plus-plus --edge --classic"
  do
    snap remove $i
  done
fi

if [ $clion = true ]
then
  #Install Clion
  for i in "clion --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Clion
  for i in "clion --edge --classic"
  do
    snap remove $i
  done
fi

if [ $pycharm = true ]
then
  #Install Pycharm
  for i in "pycharm-professional --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Pycharm
  for i in "pycharm-professional --edge --classic"
  do
    snap remove $i
  done
fi

if [ $slack = true ]
then
  #Install Slack
  for i in "slack --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Slack
  for i in "slack --edge --classic"
  do
    snap remove $i
  done
fi

if [ $skype = true ]
then
  #Install Skype
  for i in "skype --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Skype
  for i in "skype --edge --classic"
  do
    snap remove $i
  done
fi

if [ $discord = true ]
then
  #Install Discord
  for i in "discord --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Discord
  for i in "discord --edgs --classic"
  do
    snap remove $i
  done
fi

if [ $spotify = true ]
then
  #Install Spotify
  for i in "spotify --edge --classic"
  do
    snap install $i
    snap refresh $i
  done
else
  #Remove Spotify
  for i in "spotify --edge --classic"
  do
    snap remove $i
  done
fi

for i in update upgrade full-upgrade autoremove clean
do
  sudo apt $i -y
done

for i in refresh
do
  snap $i
done

if [ $work = true ]
then
  #Install work
  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done

  #medical imaging viewer compatible with hv for stir
  for i in amide
  do
    apt install -y $i
  done

  #dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng-dev tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt install -y $i
  done

  #documentation generator
  for i in doxygen graphviz
  do
    apt install -y $i
  done

  #video codec
  for i in ffmpeg
  do
    apt install -y $i
  done

  #qt for nifty
  for i in libqt5svg5 libqt5svg5-dev libqt5webkit5 libqt5webkit5-dev libqt5xmlpatterns5 libqt5xmlpatterns5-dev qttools5-dev
  do
    apt install -y $i
  done

  #for python scripts in jrmomo
  for i in python-numpy python-scipy python-matplotlib python3-numpy python3-scipy python3-matplotlib ipython python-pandas python-sympy python-nose
  do
    apt install -y $i
  done

  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done
else
  #Uninstall work
  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done

  #medical imaging viewer compatible with hv for stir
  for i in amide
  do
    apt purge -y $i
  done

  #dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng-dev tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt purge -y $i
  done

  #documentation generator
  for i in doxygen graphviz
  do
    apt purge -y $i
  done

  #video codec
  for i in ffmpeg
  do
    apt purge -y $i
  done

  #qt for nifty
  for i in libqt5svg5 libqt5svg5-dev libqt5webkit5 libqt5webkit5-dev libqt5xmlpatterns5 libqt5xmlpatterns5-dev qttools5-dev
  do
    apt purge -y $i
  done

  #for python scripts in jrmomo
  for i in python-numpy python-scipy python-matplotlib python3-numpy python3-scipy python3-matplotlib ipython python-pandas python-sympy python-nose
  do
    apt purge -y $i
  done

  for i in update upgrade full-upgrade autoremove clean
  do
    apt $i -y
  done

  for i in refresh
  do
    snap $i
  done
fi

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

for i in refresh
do
  snap $i
done

exit 0
