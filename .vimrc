"
" Vim Configuration
" This file is sourced by .config/nvim/init.vim for parity.
"

" Use the improved vi
" Must come first because it changes other options.
set nocompatible

" handle anyone crazy enough to use a non-POSIX compatible shell like fish
set shell=/bin/sh

"
" User settings
" There is probably a better convention for these.
"

" source $HOME/.vim/plugin-vundle.vim
source $HOME/.vim/user/plugins.vim
source $HOME/.vim/user/settings.vim
source $HOME/.vim/user/theme.vim
source $HOME/.vim/user/maps.vim
source $HOME/.vim/user/plugin-settings.vim
