for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

for i in amide; do
  sudo apt install -y $i
done

for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

exit 0
