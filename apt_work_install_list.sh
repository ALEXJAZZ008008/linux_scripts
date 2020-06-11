#!/bin/bash

WORKDEPENDENCIES=true
NVIDIA=true

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
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libboost-all-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libpnglite-dev libpnglite0 tcsh python swig python-dev python-numpy ipython3 python3-ipython python3-ipython-genutils python3-matplotlib python3-matplotlib-dbg mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nInstalling doxygen...\n"

  #Install documentation generator
  for i in doxygen graphviz graphviz-dev libgraphviz-dev python3-pygraphviz python3-pygraphviz-dbg python3-graphviz python3-pydot python3-pydot-ng python3-pydotplus
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
  for i in python-numpy python3-numpy python3-scipy python3-scipy-dbg python3-matplotlib python3-matplotlib-dbg python3-nibabel ipython3 python3-ipython python3-ipython-genutils python3-pandas python3-pandas-lib python3-sklearn-pandas isympy isympy-common isympy3 python3-sympy python-nose
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
  for i in libomp-dev cython cython3 libhdf5-dev hdf5-tools python3-hdf5storage
  do
    apt install -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nInstalling matlab dep...\n"

  #Install dep for matlab
  for i in libgmp-dev libmpfr-dev libmpc-dev
  do
    apt install -y $i
  done

  echo -e "\nDone!\n"
  
  echo -e "\n\nInstalling root dep...\n"

  #Install dep for root
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libpnglite-dev libpnglite0 libjpeg-dev libjpeg-progs libjpeg-tools python gfortran openssl python-openssl python3-openssl libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev qt5-default qt5-qmake qt5-qmake-bin qt5ct qtbase5-dev qtbase5-dev-tools r-base
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
  
  if [ $NVIDIA = true ]
  then
    echo -e "\n\nInstalling cuda dep...\n"
    
    #Install cuda dep
    for i in libcupti-dev libcupti-doc libcupti10.1 nvidia-driver-440 nvidia-cuda-toolkit nvidia-cuda-toolkit-gcc python-pycuda python-pycuda-dbg python3-pycuda python3-pycuda-dbg nvidia-cuda-dev
    do
      apt install -y $i
    done

    echo -e "\nDone!\n"
  else
    true
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
  for i in gcc g++ make  cmake-curses-gui libncurses-dev libx11-dev libboost-dev libboost-all-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libpnglite-dev libpnglite0 tcsh python swig python-dev python-numpy ipython3 python3-ipython python3-ipython-genutils python3-matplotlib python3-matplotlib-dbg mayavi2 mpi-default-dev mpi-default-bin libinsighttoolkit4-dev libtiff5-dev
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling doxygen...\n"

  #Unstall documentation generator
  for i in doxygen graphviz graphviz-dev libgraphviz-dev python3-pygraphviz python3-pygraphviz-dbg python3-graphviz python3-pydot python3-pydot-ng python3-pydotplus
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
  for i in python-numpy python3-numpy python3-scipy python3-scipy-dbg python3-matplotlib python3-matplotlib-dbg python3-nibabel ipython3 python3-ipython python3-ipython-genutils python3-pandas python3-pandas-lib python3-sklearn-pandas isympy isympy-common isympy3 python3-sympy python-nose
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
  for i in libomp-dev cython cython3 libhdf5-dev hdf5-tools python3-hdf5storage
  do
    apt purge -y $i
  done
  
  echo -e "\nDone!\n"

  echo -e "\n\nUnstalling matlab dep...\n"

  #Unstall dep for matlab
  for i in libgmp-dev libmpfr-dev libmpc-dev
  do
    apt purge -y $i
  done

  echo -e "\nDone!\n"
  
  echo -e "\n\nUninstalling root dep...\n"

  #Uninstall dep for root
  for i in git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libpng++-dev libpng-dev libpng-tools libpng16-16 libpnglite-dev libpnglite0 libjpeg-dev libjpeg-progs libjpeg-tools python gfortran openssl python-openssl python3-openssl libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev python-numpy-dev libxml2-dev libkrb5-dev libgsl0-dev qt5-default qt5-qmake qt5-qmake-bin qt5ct qtbase5-dev qtbase5-dev-tools r-base
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
  
  if [ $NVIDIA = true ]
  then
    true
  else
    echo -e "\n\nUninstalling cuda dep...\n"
    
    #Uninstall cuda dep
    for i in libcupti-dev libcupti-doc libcupti10.1 nvidia-driver-440 nvidia-cuda-toolkit nvidia-cuda-toolkit-gcc python-pycuda python-pycuda-dbg python3-pycuda python3-pycuda-dbg nvidia-cuda-dev
    do
      apt purge -y $i
    done
    
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
  
  echo -e "\nDone!\n"
fi
