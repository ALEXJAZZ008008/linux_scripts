for i in update upgrade full-upgrade autoremove clean; do
  sudo apt $i -y
done

exit 0
