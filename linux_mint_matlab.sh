sudo add-apt-repository ppa:graphics-drivers/ppa

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

#Install latest Nvidia driver using driver manager

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done
