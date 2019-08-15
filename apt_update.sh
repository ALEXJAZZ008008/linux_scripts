#!/bin/bash

echo -e "\n\nUpdating...\n"

for i in update upgrade full-upgrade autoremove clean
do
  apt $i -y
done

for i in refresh
do
  snap $i
done

set -eu

snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done

echo -e "\n\nDone!\n"

exit 0
