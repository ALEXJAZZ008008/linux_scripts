#!/bin/bash

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
for i in python-numpy python-scipy python-matplotlib python3-numpy python3-scipy python3-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
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

exit 0
