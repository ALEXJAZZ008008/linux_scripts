#!/bin/bash

WORKDEPENDENCIES=true

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
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng++-dev libpng-dev libpng-tools libpng16-16 tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
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
  
  #Unstall medical imaging viewer compatible with hv for stir and nii for nifty*
  for i in amide
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling stir dependencies...\n"

  #Unstall dependencies for stir
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libpng++-dev libpng-dev libpng-tools libpng16-16 tcsh python swig python-dev python-numpy ipython python-matplotlib mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling doxygen...\n"

  #Unstall documentation generator
  for i in doxygen graphviz graphviz-dev libgraphviz-dev python-pygraphviz python3-graphviz python-pydot python3-pydot
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
  for i in libomp-dev cython cython3 libhdf5-dev hdf5-tools python3-hdf5storage libace-6.4.5 libace-dev libace-tkreactor-6.4.5 libace-tkreactor-dev libace-xtreactor-6.4.5 libace-xtreactor-dev libopenblas-base libopenblas-dev
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
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libjpeg-dev libjpeg-progs python gfortran openssl openssl1.0 python-openssl python3-openssl libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev r-base
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"
  
  echo -e "\n\nUninstalling xcat dep...\n"
  
  #Unstall xcat parallel
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
