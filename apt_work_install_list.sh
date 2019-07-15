#!/bin/bash

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
for i in libxpm-dev
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

exit 0
