#
# Personal
#

# quick switch to dirs
abbr active "cd ~/Documents/active"
abbr desk "cd ~/Desktop"
abbr dots 'cd ~/Dotfiles/'
abbr docs "cd ~/Documents"
abbr down "cd ~/Downloads"
abbr drive "cd ~/Drive"
abbr n 'cd ~/Notes; and eval $EDITOR index.md'
abbr notes 'cd ~/Notes; and eval $EDITOR index.md'
abbr pub 'cd ~/Public/'
abbr src 'cd ~/src/'

# quick edits to dot files
abbr aliases 'eval $EDITOR ~/.config/omf/aliases.load'
abbr funcs 'eval $EDITOR ~/.config/fish/functions/'
abbr vr 'eval $EDITOR ~/.vimrc'
abbr vt 'eval $EDITOR ~/.tmux.conf'
abbr macos 'eval $EDITOR ~/.macos/'
abbr vp 'eval $EDITOR +silent +/add ~/.vimrc'
abbr fishconfig 'eval $EDITOR ~/.config/omf'

#
# System/General
#

abbr p "pwd"
abbr h 'history'
abbr c 'cd'
abbr cl 'clear'
abbr x 'exit'

abbr .. 'cd ..' # up one
abbr .... 'cd ../..' # up two
abbr ...... 'cd ../../..' # up three (that's enough)
abbr cdd 'cd -' # back

abbr lns "ln -s" # symlink in 2 less characters
abbr rmrf "rm -rf" # as if bricking your machine wasn't easy enough
abbr rmrfp "rm -rfp" # you could say that again
abbr mkdirp 'mkdir -p' # auto nesting
abbr cpr 'cp -R' # recursive
abbr duh 'du -h' # list disk usage for all files in ./
abbr dush 'du -sh' # list total disk usage of ./
abbr chx 'chmod +x' # make it executable
abbr chR 'chmod -R' # recursive

# archives
abbr tgz 'tar -xvzf' # extract .tar.gz
abbr tbz 'tar -xvjf' # extract .tar.bz2

# system aliases()
abbr zzz 'sudo shutdown -s now'
abbr reboot 'sudo shutdown -r now'
abbr off 'sudo shutdown -h now'

abbr less "less -MNi" # file info/position, line #'s, smart case

# copy current path to system clipboard
abbr cwd "pwd | eval $CLIPBOARD"

abbr tr "tree -C -L 1" # show a quick tree of files
abbr tra 'tree -C -a -L 1' # also list hidden files (think "list all")

# https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
abbr ssh 'env TERM=xterm-256color ssh'

abbr psg 'ps aux | grep -v grep | grep -i -e VSZ -e'

abbr xo 'xdg-open'

abbr gr 'grep'

#
# macOS
#

# Recursively delete `.DS_Store` files
abbr rmds "find . -name '*.DS_Store' -type f -ls -delete"

#
# Programs
#

abbr ai 'sudo apt install'
abbr aud 'sudo apt update'
abbr aug 'sudo apt upgrade'

# vim
abbr v 'nvim'
abbr vtime 'nvim --startuptime vim-startuptime.log'

# git
abbr g 'git'
abbr gs 'git s'
abbr ga 'git add'
abbr gaa 'git add --all'
abbr gap 'git add --patch'
abbr gc 'git commit -v -S'
abbr gca 'git commit --amend -v -S'
abbr gco 'git checkout'
abbr gcob 'git checkout -b'
abbr gp 'git push'
abbr gpf 'git push --force-with-lease'
abbr gpl 'git pull'
abbr gcl 'git clone'
abbr gf 'git fetch'
abbr gfa 'git fetch --all'
abbr gr 'git remote'
abbr grb 'git rebase'
abbr grbc 'git rebase --continue'
abbr gb 'git branch'
abbr gd 'git diff'
abbr gl 'git ll'
abbr gsv 'git svn'
abbr gsr 'git svn rebase'
abbr gsc 'git svn dcommit'
abbr gsb 'git svn blame --git-format'
abbr gsi 'git svn show-ignore >> .git/info/exclude'

# tmux
abbr tm 'tmux'
abbr tmn 'tmux new -s'
abbr tml 'tmux ls'
abbr tma 'tmux attach -t'
abbr tmk 'tmux kill-session -t'
abbr tmkk 'tmux kill-server'

# taskwarrior
abbr t 'task'
abbr ta 'task add'
abbr tl 'task ls | less'
abbr tll 'task long | less'
abbr ts 'task summary'
abbr tt 'task tags'
abbr tc 'task context'
abbr inbox 'task project: -waitingFor'
abbr waiting 'task +waitingFor'
abbr home 'task context home'
abbr work 'task context work'
abbr office 'task context office'

# ranger
abbr r "ranger"

# docker
abbr dc docker-compose
abbr dcu docker-compose up
abbr dcud docker-compose up -d
abbr docker-clean-all "docker stop (docker container ls -a -q); and docker system prune -a -f --volumes"
abbr docker-killall "docker kill (docker ps -q)"
abbr whale:bomb "docker stop (docker container ls -a -q); and docker system prune -a -f --volumes"

#
# Bling
#

abbr starwars 'telnet towel.blinkenlights.nl'
abbr matrix 'cmatrix -a'
abbr lc 'colorls'

#
# Network Info
#

abbr localip "ipconfig getifaddr en1"
abbr ips "ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ and print $1'"
abbr myip "curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'"
abbr sniff "sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
abbr httpdump "sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

abbr nameservers 'host -t ns'

#
# extra
#

alias backup="yes | mackup backup"

# find and tail all logs in ./
abbr tails "less -MNi +F (find . -type f -not -name '*.tar' -not -name '*.gz' -not -name '*.zip' -not -path '*.git*' -not -path '*.svn*' -not -path '*node_modules*' | grep -e '/log/' -e '/logs/' -e '\.log')"

# misc
abbr lmk "say 'Process complete.'" # pin to the tail of long commands

abbr m "math" # quick calculations in the terminal

# URL encode/decode
abbr urlencode 'python -c "import urllib, sys; print urllib.quote_plus(sys.argv[1])"'
abbr urldecode 'python -c "import urllib, sys; print urllib.unquote_plus(sys.argv[1])"'

# svn
abbr s 'svn'
abbr ss 'svn status'
abbr su 'svn up'
abbr sa 'svn add'
abbr sd 'svn diff'
abbr sdd 'svn diff | nvim -R -'
abbr sl 'svn log --limit 100 | nvim -R -'
abbr sld 'svn log --diff --limit 40 | nvim -R +"set ft=diff" -'
abbr sb 'svn blame | nvim -R +"set ft=diff" -'
abbr sci 'svn commit'
abbr sco 'svn checkout'
abbr sr 'svn revert'
abbr srr 'svn revert -R'
abbr svnignore 'svn propset svn:ignore'

# bitbucket
abbr bbcreate 'bb create_from_local --private --protocol=ssh'

# homebrew
abbr bi 'brew install'
abbr bs 'brew search'
abbr bud 'brew update'
abbr bug 'brew upgrade'
abbr bd 'brew doctor'
abbr bl 'brew list'

# homebrew cask
abbr bci 'brew cask install'
abbr bcs 'brew cask search'

# vagrant
abbr vag 'vagrant'
abbr vagba 'vagrant box add'
abbr vagi 'vagrant init'
abbr vagu 'vagrant up'
abbr vags 'vagrant ssh'
abbr vagus 'vagrant up; and vagrant ssh'
abbr vagh 'vagrant halt'
abbr vagr 'vagrant reload'
abbr vagd 'vagrant destroy'

# IRB
abbr irb 'irb --simple-prompt'

# postgresql
abbr pgstart 'pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
abbr pgstop 'pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# jekyll
abbr jek 'jekyll'
abbr jekb 'jekyll build'
abbr jekbw 'jekyll build --watch'
abbr jeks 'jekyll serve'
abbr jeksw 'jekyll serve --watch'

# npm & the gang
abbr npr 'npm run'
abbr npi 'npm install'
abbr npis 'npm install --save'
abbr yar 'yarn run'
abbr yas 'yarn start'
abbr yab 'yarn build'

# pianobar (pandora cli)
abbr pandora 'pianobar'

# youtube-dl | http://rg3.github.io/youtube-dl/
abbr ytdl 'youtube-dl'
abbr ytmp3 'youtube-dl --extract-audio --audio-format mp3'
abbr ytaudio 'youtube-dl --extract-audio'

# exiftool
abbr exiftime "exiftool -time:all -s" # show all time attrs
abbr exifval "exiftool -s -s -s" # just print value(s)

# wp-cli
abbr wpsalt "curl 'https://api.wordpress.org/secret-key/1.1/salt/' | eval $CLIPBOARD; echo 'Keys copied to clipboard!'"

# lando
abbr ldi "lando db-import"
abbr lw "lando wp"
abbr lwu "lando wp user"

# fzf
abbr f 'fzf'

# asciinema
abbr rec 'asciinema rec'

# wget
abbr wgetall 'wget --mirror -p --convert-links'
abbr wgetdir 'wget --recursive --no-parent'
