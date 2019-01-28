in_manifest = open("./manifest", 'r')

out_manifest_string = "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean && sudo apt install -y"

for command in in_manifest:
    out_manifest_string += ' ' + command.split('\t')[0]

out_manifest = open("./manifest_command", 'w')

out_manifest.write(out_manifest_string)
