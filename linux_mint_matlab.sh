sudo add-apt-repository ppa:graphics-drivers/ppa

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

#Install latest Nvidia driver using driver manager and reboot
#for i in nvidia-driver-410; do
#  sudo apt install -y
#done

for i in build-essential dkms freeglut3 freeglut3-dev libxi-dev libxmu-dev g++ libx11-dev libxi-dev libglu1-mesa libglu1-mesa-dev; do
  sudo apt install -y
done

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb

sudo dpkg -i cuda-repo-ubuntu1804_10.0.130–1_amd64.deb

sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

for i in cuda cuda-9-1 cuda-command-line-tools-9-1 cuda-compiler-9-1 cuda-cublas-9-1 cuda-cublas-dev-9-1 cuda-cudart-9-1 cuda-cudart-dev-9-1 cuda-cufft-9-1 cuda-cufft-dev-9-1 cuda-cuobjdump-9-1 cuda-cupti-9-1 cuda-curand-9-1 cuda-curand-dev-9-1 cuda-cusolver-9-1 cuda-cusolver-dev-9-1 cuda-cusparse-9-1 cuda-cusparse-dev-9-1 cuda-demo-suite-9-1 cuda-documentation-9-1 cuda-driver-dev-9-1 cuda-drivers cuda-gdb-9-1 cuda-gpu-library-advisor-9-1 cuda-libraries-9-1 cuda-libraries-dev-9-1 cuda-license-9-1 cuda-memcheck-9-1 cuda-misc-headers-9-1 cuda-npp-9-1 cuda-npp-dev-9-1 cuda-nsight-9-1 cuda-nvcc-9-1 cuda-nvdisasm-9-1 cuda-nvgraph-9-1 cuda-nvgraph-dev-9-1 cuda-nvml-dev-9-1 cuda-nvprof-9-1 cuda-nvprune-9-1 cuda-nvrtc-9-1 cuda-nvrtc-dev-9-1 cuda-nvtx-9-1 cuda-nvvp-9-1 cuda-repo-ubuntu1604 cuda-runtime-9-1 cuda-samples-9-1 cuda-toolkit-9-1 cuda-tools-9-1 cuda-visual-tools-9-1 libcuda1-390 nvidia-cuda-toolkit; do
  sudo apt install -y $i
done

#Use furiusisomount to mount and install Matlab ISO in /home/Matlab
for i in furiusisomount fuseiso; do
  sudo apt install -y $i
done

sudo ln -s /lib/i386-linux-gnu/libc.so.6 /lib/libc.so.6

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done
