" Some magic stuff to not to spoil the filesystem with tons of files
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

set backupdir=~/.tmp

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" some syntax stuff
if has('syntax') && has('eval')
  packadd! matchit
endif

" leader
let mapleader=","
noremap <Leader>y "*y

" some settings and defplugins
filetype on
filetype plugin on
set hidden
filetype plugin indent on
set autoindent
set number
set incsearch
set hls
set nocompatible
syntax enable

set laststatus=2
set shiftwidth=4
"for mouse selection
set mouse=a

"keys

" brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap "      ""<Left>
inoremap ""     "

inoremap ' 	''<Left>
inoremap ''	'

inoremap ( 	()<Left>

map <C-w> :tabclose <CR>
map <C-n> :tabnew <CR>

"Plugins
call plug#begin('~/.vim/plugged')

"Color theme (Onehalf)
Plug 'sonph/onehalf', {'rtp': 'vim/'}

"Color theme (edge)
"Plug 'sainnhe/edge'

"color theme ayu
Plug 'ayu-theme/ayu-vim'

"Status line
Plug 'itchyny/lightline.vim'

Plug 'majutsushi/tagbar'          	" Class/module browser

Plug 'preservim/nerdtree' "side bar

Plug 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more

"Commentaries
Plug 'preservim/nerdcommenter'

"Autocompletion
Plug 'ycm-core/YouCompleteMe'

"Git
Plug 'airblade/vim-gitgutter'

"File search
Plug 'ctrlpvim/ctrlp.vim'

"bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" notes
Plug 'xolox/vim-notes'

" misc (needed for notes)
Plug 'xolox/vim-misc'
"insert new here

call plug#end()

set backspace=indent,eol,start

"----------------------------UI-------------------------
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" lightline theme (status bar)
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:lightline.colorscheme='onehalfdark'

" Font
set guifont=JetBrainsMono-Regular:h15

" nerdtree
map <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" tagbar settings 
map <Leader>m :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии



"--------------------------filetypes-------------------------
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

autocmd FileType java setlocal omnifunc=javacomplete#Complete

" ctrlp settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" C++ IDE Settings
set exrc
set secure

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let &path.="src/include,/usr/include/AL,"

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

