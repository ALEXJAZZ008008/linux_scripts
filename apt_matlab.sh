#!/bin/bash

#This is not nice and attempts to install things that are not correct and are messy but for completeness they are there, if you're installing matlab on you linux machine you've already sacrificed it anyway. obviously update versions etc

add-apt-repository -y ppa:graphics-drivers/ppa

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

#Install latest Nvidia driver using driver manager or software & updates and reboot or run:
#for i in nvidia-driver-410; do
#  apt install -y $i
#done
if [ $1 == "-1" ]
then
  exit 0
fi

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb

dpkg -i ./cuda-repo-ubuntu1804_10.0.130-1_amd64.deb

rm ./cuda-repo-ubuntu1804_10.0.130-1_amd64.deb

apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

for i in cuda
do
  apt install -y $i
done

#mount and install Matlab ISO in /mnt
#$user will be replaced by your user name. (must).
if [ $1 == "-2" ]
then
  exit 0
fi

ln -s /lib/i386-linux-gnu/libc.so.6 /lib/libc.so.6

#1. in the terminal enter this code: sudo nano /usr/share/applications/matlab.desktop
#2. copy paste the following lines into the newly opened .desktop file without #
#  [Desktop Entry]
#  Exec=/home/$user/Matlab/bin/matlab -desktop
#  Icon=/home/$user/Matlab/X11/icons/matlab64c_icon.xpm
#  Type=Application
#  Comment=Matrix Laboratory
#  Name=Matlab
#  Categories=Development;
#$user will be replaced by your user name. (must).

#For Exec and Icon, the path should be correct i.e you must change "user"  according to your path. (must).
#in "Name= Matlab " you can change the name whatever you want.(optional).
#in "GenericName" you can put whatever you want. you can cut off this line too.(optional).
#save & exit the .desktop file.
#a new entry named "Matlab" will be added in the menu under the programming section.
#3. now go to menu->programming->Matlab.
#Enjoy... your Matlab environment....

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

exit 0
