in_pkglist = open("./pkglist", 'r')

out_pkglist_string = "sudo pacman -syyyu"

for command in in_pkglist:
    out_pkglist_string += ' ' + command.split('\n')[0]

out_pkglist = open("./pkglist_command", 'w')

out_pkglist.write(out_pkglist_string)
