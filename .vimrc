set shell=/bin/bash
set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


" Add plugins here

Plugin 'Shougo/vimproc.vim'
" This needs npm install -g typescript
" cd ~/.vim/bundle/vimproc.vim && make
" This has to be run before installing tsuguyomi

Plugin 'quramy/tsuquyomi'

Plugin 'scrooloose/nerdtree'
" Shortcute ctrol+n for nerdtree
map <C-n> :NERDTreeToggle<CR>

Plugin 'leafgarland/typescript-vim'
" :source %
" :PluginInstall

Plugin 'vim-syntastic/syntastic'
let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint'] " You shouldn't use 'tsc' checker.
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint'] " You shouldn't use 'tsc' checker.

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'

" using fzf on macos, have to install fzf using homebrew first
" then run this command
" Also install ag
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim'

" Themes
Plugin 'chriskempson/base16-vim'
Plugin 'joshdick/onedark.vim'

" No plugins after this line
call vundle#end() 
filetype plugin indent on

set number
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
colorscheme onedark
let g:NERDTreeChDirMode       = 2
let NERDTreeShowBookmarks=1
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let base16colorspace=256
syntax enable
let g:tsuquyomi_completion_detail = 1
let mapleader=" "
let g:ctrlp_map = '<leader>c'
let g:ctrlp_show_hidden = 1
let NERDTreeShowHidden=1
