call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" If no screen, use color term
if ($TERM == "vt100")
  " xterm-color / screen
  set t_Co=8
  set t_AF=[1;3%p1%dm
  set t_AB=[4%p1%dm
endif

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
 so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
 so $VIMRUNTIME/macros/matchit.vim
endif

let g:NERDTreeDirArrows=0
nnoremap <silent> <F6> :NERDTreeToggle<CR>
nnoremap <silent> <S-Tab> <C-w>h
nnoremap <silent> <Tab> <C-w>l
nnoremap <silent> <F5> :UndotreeToggle<CR>


call pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set backup		" keep a backup file
" set textwidth=78
set tabstop=4
set shiftwidth=4
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch
set nu
set laststatus=2
set statusline+=%F
set guifont=Consolas:h12 
set autochdir
if has("win32")
	set backupdir=E:\backup\
	set directory=E:\swap\
	set undodir=E:\undo\
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"superTab mapping
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"
"set bg=dark
"set background=dark	" another is 'light'
colorscheme darkblue
"let g:molokai_original = 1
hi Pmenu        term=standout   cterm=reverse   ctermfg=Magenta
hi PmenuSel     term=bold       cterm=bold      ctermfg=Blue 	ctermbg=White
hi PmenuSbar    term=standout   cterm=bold      ctermfg=White 	ctermbg=White
hi PmenuThumb   term=bold       cterm=bold 		ctermbg=Blue 

" VIM 6.0,
if version >= 600
    set hlsearch
    " set foldcolumn=2
    " set foldmethod=syntax
    set foldmethod=marker
    set foldlevel=1
"    set foldtext=/^/=>
    " set encoding=utf-8
    " set fileencoding=big5
    " set termencoding=big5
    set encoding=big5
    " set fileencodings=latin,big5,ucs-bom,utf-8,sjis,big5
    set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
  map  <C-c> :tabnew<CR>
  imap <C-c> <ESC>:tabnew<CR>
  map  <C-k> :tabclose<CR>
  map  <C-p> :tabprev<CR>
  imap <C-p> <ESC>:tabprev<CR>
  map  <C-n> :tabnext<CR>
  "imap <C-n> <ESC>:tabnext<CR>
  map <F4> :set invcursorline<CR>

  map g1 :tabn 1<CR>
  map g2 :tabn 2<CR>
  map g3 :tabn 3<CR>
  map g4 :tabn 4<CR>
  map g5 :tabn 5<CR>
  map g6 :tabn 6<CR>
  map g7 :tabn 7<CR>
  map g8 :tabn 8<CR>
  map g9 :tabn 9<CR>
  map g0 :tabn 10<CR>
  map gc :tabnew<CR>
  map gn :tabn<CR>
  map gp :tabp<CR>

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold
  highlight clear TabLineFill


end

imap ii <ESC>
" Crontabs must be edited in place
au BufRead /tmp/crontab* :set backupcopy=yes
filetype plugin indent on
