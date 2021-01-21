# ./bin/bash
# Is this really it?

# Move dotfiles into home directory and prompt when replacing
mv -i * "/home/$(whoami)"

# Restart bash with new .bashrc file
source ~/.bashrc
