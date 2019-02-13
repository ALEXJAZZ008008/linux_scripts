in_pkglist = open("./pkglist", 'r')

out_pkglist_string = "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo do-release-upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean"

in_pkglist.pop(0)

for command in in_pkglist:
    out_pkglist_string += ' ' + command.split('/')[0]

out_pkglist_string = "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo do-release-upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean"

out_pkglist = open("./pkglist_command", 'w')

out_pkglist.write(out_pkglist_string)
