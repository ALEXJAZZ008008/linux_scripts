with open("./manifest", 'r') as in_manifest:
    out_manifest_string = "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo do-release-upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean && sudo apt install -y"

    for command in in_manifest:
        out_manifest_string += ' ' + command.split('\t')[0]

    out_manifest_string += "sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo do-release-upgrade && sudo apt -y update && sudo apt -y upgrade && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y clean"
        
    with open("./manifest_command", 'w') as out_manifest:
        out_manifest.write(out_manifest_string)
