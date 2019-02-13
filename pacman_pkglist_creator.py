with open("./pkglist", 'r') as in_pkglist:
    out_pkglist_string = "sudo pacman -Syyyu"

    for pkg in in_pkglist:
        out_pkglist_string += ' ' + pkg.split('\n')[0]

    with open("./pkglist_command", 'w') as out_pkglist:
        out_pkglist.write(out_pkglist_string)
