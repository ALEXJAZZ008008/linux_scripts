with open("pkglist", 'r') as in_pkglist:
    out_pkglist_string = "for i in update upgrade full-upgrade autoremove clean; do\n\tsudo apt $i -y\ndone\n\nfor i in"

    next(in_pkglist)

    for pkg in in_pkglist:
        out_pkglist_string += ' ' + pkg.split('/')[0]

    out_pkglist_string += "; do\n\tsudo apt install -y $i\ndone\n\nfor i in update upgrade full-upgrade autoremove clean; do\n\tsudo apt $i -y\ndone"

    with open("pkglist_command", 'w') as out_pkglist:
        out_pkglist.write(out_pkglist_string)
