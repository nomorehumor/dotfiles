" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

let mapleader=","

set number
set incsearch
set hls

set guifont=JetBrainsMono-Regular:h15

"Plugins
call plug#begin('~/.vim/plugged')

"Color theme (nord)
Plug 'arcticicestudio/nord-vim'

"Color theme (afterglow)
Plug 'danilo-augusto/vim-afterglow'

"Color theme (Gotham)
Plug 'whatyouhide/vim-gotham'

"Status line
Plug 'itchyny/lightline.vim'

"File tree
Plug 'preservim/nerdtree'

"Commentaries
Plug 'preservim/nerdcommenter'

Plug 'ervandew/supertab'

"Java
Plug 'artur-shaik/vim-javacomplete2'

"Python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim' " autocompletion


call plug#end()

"syntax off
"
set laststatus=2
colorscheme afterglow 

"Nerdtree settings
"autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

filetype plugin on
filetype plugin indent on
syntax on
set autoindent
set hidden
set incsearch

autocmd FileType java setlocal omnifunc=javacomplete#Complete

set shiftwidth=4

" keybindings
noremap <Leader>y "*y


