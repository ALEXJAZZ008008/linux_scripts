with open("./pkglist", 'r') as in_pkglist:
    out_pkglist_string = "sudo pacman -Syyu --noconfirm\n#install reflector\nfor i in reflector; do\n\tsudo pacman -S --noconfirm $i\ndone\n\nsudo reflector --verbose --protocol https --sort rate --save /etc/pacman.d/mirrorlist\n\nsudo pacman -Syyu\n\nfor i in"

    for pkg in in_pkglist:
        out_pkglist_string += ' ' + pkg.split('\n')[0]
    
    out_pkglist_string += ";\ndo\n\tsudo pacman -Syyu --noconfirm $i\ndone"

    with open("./pkglist_command", 'w') as out_pkglist:
        out_pkglist.write(out_pkglist_string)
