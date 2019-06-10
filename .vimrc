set nocompatible              " be iMproved, required
filetype off                  " required

color murphy

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Shows | character for indentation levels
Plugin 'yggdroot/indentline'

"Easy file and command searching
"Plugin 'wincent/command-t'

"File explorer
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'


"SYNTAX CHECKERS


"Syntastic
"Plugin 'scrooloose/syntastic'
"set statusline+=%#warningmsg#
"set statusline+={SyntasticStatusLineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:systastic_check_on_wq = 0

"let g:syntastic_c_checkers = ['gcc']

"Real time interpretter thing
"Plugin 'metakirby5/codi.vim'

"Note taking pad


"Python IDE
"Plugin 'klen/python-mode'
"let g:pymode_python = 'python3'
"let g:pymode_options_colorcolumn = 0

Plugin 'editorconfig/editorconfig-vim'

Plugin 'c.vim'

Plugin 'valloric/youcompleteme'
let g:ycm_confirm_extra_conf = 0

"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"interface

set number

"search config
set hlsearch
set incsearch
set ignorecase
set smartcase

"tab (indent) config
set sts=4
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

" ds settings: set sts=4 sw=4 ts=8 expandtab ft=cpp:

set ft=cpp

set autoindent

"new lines
set tw=80
"autocmd Bufread,BufNewFile *.txt set fo=ta2

map <C-F1> spell! spelllang=en_us<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost     * nested lwindow

"tab (pages) config
set tabpagemax=20
set showtabline=2

set swb=usetab "Make file errors will open in tab, not overwrite buffer

set mouse=a

"split screen config
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"autocmd BufRead,BufNewFile *.h exe "silent! leftabove vert sfind" fnameescape(expand("<afile>:r").".cpp") | set syntax=cpp
"autocmd BufRead,BufNewFile *.cpp exe "silent! rightbelow vert sfind" fnameescape(expand("<afile>:r").".h") | set syntax=cpp


autocmd BufRead,BufNewFile *.html set sts=2 sw=2 ts=4 

set pastetoggle=<F2>
