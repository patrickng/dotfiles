set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'benmills/vimux'
" Plugin 'https://github.com/bling/vim-airline'
" Plugin 'https://github.com/Lokaltog/vim-powerline.git'
Plugin 'https://github.com/powerline/powerline.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

syntax enable
set expandtab
filetype indent on
colorscheme Tomorrow-Night
set number
set guioptions+=e
set mouse=a
set encoding=utf-8
set guifont=Droid\ Sans\ for\ Powerline
set ignorecase
set smartcase

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>


autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
     if bufwinnr(t:NERDTreeBufName) != -1
       if winnr("$") == 1
         q
       endif
     endif
  endif
endfunction

let g:Powerline_symbols = 'fancy'
