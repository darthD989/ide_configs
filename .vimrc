set nocompatible              " be iMproved, required
let &t_Co=256
filetype off                  " required
set tabstop=2
set shiftwidth=2

" set the runtime path to include Vundle and initialize
set path+=**
set rtp+=~/.vim/bundle/Vundle.vim
set wildmenu
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mediawiki.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'flazz/vim-colorschemes'
Plugin 'plytophogy/vim-virtualenv'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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

colorscheme darth

set number
set relativenumber

set clipboard=unnamed

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


set nocompatible      " We're running Vim, not Vi!
syntax enable             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd FileType perl nnoremap <buffer> <F8> :exec '!clear; perl' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F2> :exec '!clear; python' shellescape(@%, 1)<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Enable folding
set foldmethod=indent
set foldlevel=99

"python with virtualenv support
"py << EOF
"import os
"#import sys
"#if 'VIRTUAL_ENV' in os.environ:
"#  project_base_dir = os.environ['VIRTUAL_ENV']
"#  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"#  execfile(activate_this, dict(__file__=activate_this))
"
"
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
