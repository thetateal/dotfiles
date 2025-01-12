"
" Normal Mode:
"

" natural cursor movement between lines
nnoremap j gj
nnoremap k gk

" run last :command
nnoremap :: @:<CR>

" quick save
nnoremap S :w!<CR>

" start/end of line
" replaced default of H/L moving cursor to top/bottom +/- `scrolloff`
nmap H ^
nmap L $

" Select (charwise) the contents of the current line, excluding indentation.
nnoremap vv ^vg_

" shortcut to system clipboard
nnoremap Y "+y
nnoremap "" "+


" deal with next/prev spelling error and return to position
nnoremap z] ]s1z=<C-o>
nnoremap z[ [s1z=<C-o>

" mark next/prev as good spelling and return to position
nnoremap z} ]szg<C-o>
nnoremap z{ [szg<C-o>
" Open Space:

" +
" <C-[> same as ESC
" <C-_>
" <C-g> display current file name and position
" <C-n> synonym for j
" <Down>
" <Left>
" <Right>
" <S-Down> same as CTRL-F
" <S-Left> same as "b"
" <S-Right>	same as "w"
" <S-Up> same as CTRL-B
" <Up>
" S synonym for "cc"
" [a,b,e,g,h,j,k,l,n,o,q,r,t,u,v,w,x
" \ (if not leader)
" ]a,b,e,g,h,j,k,l,n,o,q,r,t,u,v,w,x
" _
" g"
" g$ when 'wrap' on go to the rightmost char of current screen line
" g%
" g(
" g)
" g0 when 'wrap' on go to the leftmost character of the current screen line
" g1-7,9
" g<C-b,c,d,e,f,i-z>
" g<Down> same as "gj
" g<Left>
" g<Right>
" g<Up> same as "gk)
" g? Rot13 encoding operator
" gA-C,G,K-M,O,S,W-Z
" gH select line mode
" gK
" gN find previous match with last used search pattern and Visually select it
" gR enter Virtual Replace mode
" g\
" g^ when 'wrap' on go to leftmost non-white character of current screen line
" gb,c,l,
" gj already remapped j to do gj
" gk already remapped k to do gk
" gm go to character at middle of the screenline
" gn visually select search patterns
" go cursor to byte N in the buffer
" gp put text [from register] after cursor N times, leave cursor after it
" gq format Nmove text (gw is better, keeps cursor position)
" gs go to sleep for N seconds (default 1)
" gy
" gz
" g|
" s Synonym for cl
" s ANYTHING
" z!
" z#
" z$
" z%
" z&
" z(
" z)
" z*
" z,
" z/
" z1-0
" z<C-ANYTHING>
" z<Del>
" z<Down>
" z<Left> same as "zh"
" z<Right> same as "zl"
" z<Up>
" z?
" z@
" zB,I,J,K,P,Q,S-V,Y,Z
" z\
" zp,q,u,y
" z|
" | cursor to column N


"
" Visual Mode:
"

vmap H ^
vmap L g_
vmap Y "+y

vnoremap "" "+

"
" Insert Mode:
"

" format quickly
inoremap <C-q> <Esc>mzgqip`za

" toggle case of current word
inoremap <C-u> <Esc>mzvaW~`za

" correct previous/current spelling error
inoremap <C-z> <Esc>mz[s1z=`za


"
" Ex (Command) Mode
"

" su-DOH
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"
" Terminal Mode:
"

if has('nvim')
  " exit terminal mode with Meta-[
  tnoremap <M-[> <C-\><C-n>

  " tnoremap <Esc> <C-\><C-n>
  " tnoremap <M-[> <Esc>
  " tnoremap <C-v><Esc> <Esc>
endif

"
" Leader Maps:
" Use mnemonics where possible, i.e. >sp = `:set paste`.
"

" paste mode
nnoremap <Leader>sp :set invpaste paste?<CR>
set pastetoggle=<Leader>sp

" line numbers
nnoremap <leader>sn :set nonumber! norelativenumber!<CR>

" toggle search highlights
nnoremap <leader>sh :set hlsearch!<CR>

" toggle invisibles
nnoremap <Leader>sl :set list!<CR>

" toggle conceal levels
nnoremap <Leader>sc :set conceallevel=

" toggle spell check
nnoremap <Leader>ss :set spell!<CR>

" change file type (not really a toggle but who's counting)
nnoremap <Leader>sf :set filetype=

" Toggle light/dark color
nnoremap <Leader>\ :let &background=(&background =~# "dark"?"light":"dark")<CR>

" substitute all occurrences of the word under the cursor
nnoremap <Leader>fk :%s/\<<C-r><C-w>\>//g<Left><Left>

" quick find/replace
nnoremap <Leader>fg :%s//g<Left><Left>

" yank all the things, and persist the cursor location
nnoremap <Leader>y ylpxggyGg;h
nnoremap <Leader>Y ylpxgg"+yGg;h

" source vimrc
nnoremap <leader>% :source $MYVIMRC<cr>

" source vimrc and install vundle plugins
nnoremap <Leader>^ :source $MYVIMRC <BAR> :PlugUpdate<CR>

" Create the `tags` file (may need to install ctags first)
nnoremap <leader>. !ctags -R .<CR>

" quickly switch to last buffer
nnoremap <Tab> <C-^><CR>

" toggle indentation spaces
nnoremap <Leader>2 :set tabstop=2 shiftwidth=2<cr>
nnoremap <Leader>4 :set tabstop=4 shiftwidth=4<cr>

" format of entire buffer
nnoremap <Leader>gw gggwG<C-O>

" Custom Functions
nnoremap <Leader>fr :FindReplace<CR>
nnoremap <Leader>dc :RemoveFancyCharacters<CR>

" make directory for current file
nnoremap <Leader>! :!mkdir -p %:h<CR>

" open/close quickfix window
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cc :cclose<CR>

nnoremap <Leader>C :Codi<CR>

"
" Plugins:
"

nmap <Leader>m :LivedownToggle<CR>
" nmap <leader>= <Plug>(ale_fix)
" nmap <leader>lt <Plug>(ale_toggle)
" nmap <silent> [W <Plug>(ale_first)
" nmap <silent> [w <Plug>(ale_previous_wrap)
" nmap <silent> ]w <Plug>(ale_next_wrap)
" nmap <silent> ]W <Plug>(ale_last)

" FZF
nnoremap <C-b> :Buffers<CR>
nnoremap <C-p> :Files<CR>
nnoremap z/ :History/<CR>
nnoremap zm :Marks<CR>
nnoremap zr :Tags<CR>
nnoremap z; :History:<CR>
nnoremap zh :Helptags<CR>

nnoremap <Leader>tb :TagbarToggle<CR>

" nnoremap <Leader>gu :Gista unstar<CR>
" nnoremap <Leader>gs :Gista star<CR>
" nnoremap <Leader>gd :Gista --delete<CR>
" nnoremap <Leader>ga :Gista post --anonymous<CR>
" nnoremap <Leader>gpu :Gista post --public<CR>
" nnoremap <Leader>gpr :Gista post --private<CR>
" nnoremap <Leader>gb :Gista browse
" nnoremap <Leader>gl :Gista list<CR>


nnoremap <Leader>g :Git
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gpl :Gpull<CR>
nnoremap <Leader>gpu :Gpush<CR>

nnoremap U :UndotreeToggle<CR>

nnoremap <Leader>ts :Tabularize /<Space><CR>
nnoremap <Leader>t\| :Tabularize /\|<CR>
nnoremap <Leader>t< :Tabularize /\<<CR>
nnoremap <Leader>t, :Tabularize /,<CR>
nnoremap <Leader>t- :Tabularize /-<CR>
nnoremap <Leader>t: :Tabularize /:\zs<CR>
nnoremap <Leader>t= :Tabularize /=<CR>
nnoremap <Leader>ta :Tabularize <CR>

nnoremap <Leader>dw :StripWhitespace<CR>
nnoremap <Leader>tw :ToggleWhitespace<CR>

nnoremap <Leader>a :NERDTreeToggle<CR>

nnoremap <Leader>A :TagbarToggle<CR>

nnoremap <Leader><CR> :Goyo<CR>

nnoremap <buffer> <Leader>pd :call pdv#DocumentCurrentLine()<CR>

" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)

vnoremap <Leader>ta :Tabularize <CR>
vnoremap <Leader>t= :Tabularize /=<CR>
vnoremap <Leader>t: :Tabularize /:\zs<CR>
vnoremap <Leader>t- :Tabularize /-<CR>
vnoremap <Leader>t, :Tabularize /,<CR>
vnoremap <Leader>t< :Tabularize /\<<CR>
vnoremap <Leader>t\| :Tabularize /\|<CR>
vnoremap <Leader>ts :Tabularize /<Space><CR>
