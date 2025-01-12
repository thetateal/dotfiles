" hashtag #pythonproblems
" https://github.com/rogual/neovim-dot-app/issues/32#issuecomment-90770935
" https://ricostacruz.com/til/neovim-with-python-on-osx
if $OSNAME == "Darwin"
    let g:python2_host_prog = '/usr/local/bin/python'
    let g:python3_host_prog = '/usr/local/bin/python3'
endif

set runtimepath^=$HOME/.vim runtimepath+=$HOME/.vim/after
let &packpath = &runtimepath
source $HOME/.vimrc

" slightly better escape from :terminal
tnoremap <C-n><Esc> <C-\><C-n>
