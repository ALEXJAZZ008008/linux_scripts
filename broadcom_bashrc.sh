#Start wireless adapter
sudo modprobe brcmsmac

#Get path
PATH=$(dirname "$0")

#Update
$PATH/pacman_update.sh
