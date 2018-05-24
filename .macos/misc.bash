#!/usr/bin/env bash

# setup ssh key
if [ [ -d "~/.ssh" ] || [ -L "~/.ssh" ] ]; then
  echo "Looks like you already have ssh confgs... skipping."
else
  echo "Generating ssh keys..."
  ssh-keygen -t rsa
fi


# misc
echo "downloading some miscellaneous payloads to the desktop for manual labor..."
wget http://ethanschoonover.com/solarized/files/solarized.zip

mkdir ~/Desktop/MANUAL\ LABOR
mv *.zip ~/Desktop/MANUAL\ LABOR

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mv $HERE/solarized.zip ~/Desktop/MANUAL\ LABOR

# set up iTerm2 shell integration
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash

# make italics work in iTerm and tmux
# https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
tic -x $HERE/xterm-256color-italic.terminfo
tic -x $HERE/tmux-256color.terminfo

# # Dropbox sym links

# user=sean

# dirs=(
#   active
#   Desktop
#   Documents
#   notes
#   Public
# )

# for dir in "${dirs[@]}"; do
#   mkdir ~/$dir &> /dev/null
#   mv ~/Dropbox/$user/$dir/* ~/$dir
#   rm -rf ~/Dropbox/$user/$dir
#   ln -s ~/$dir ~/Dropbox/$dir
# done