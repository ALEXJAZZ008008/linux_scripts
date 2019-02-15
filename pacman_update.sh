sudo pacman -Syyu --noconfirm

for i in reflector; do
  sudo pacman -S --noconfirm $i
done

sudo reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Syyu --noconfirm

exit 0
