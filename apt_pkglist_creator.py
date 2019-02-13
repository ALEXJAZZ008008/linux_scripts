with open("pkglist", 'r') as in_pkglist:
    out_pkglist_string = "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo do-release-upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean && sudo apt -y install"

    next(in_pkglist)

    for pkg in in_pkglist:
        out_pkglist_string += ' ' + pkg.split('/')[0]

    out_pkglist_string += "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo do-release-upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean"

    with open("pkglist_command", 'w') as out_pkglist:
        out_pkglist.write(out_pkglist_string)
