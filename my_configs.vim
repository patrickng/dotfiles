"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=5000
"set number

set splitright
set splitbelow

set undolevels=50000
set clipboard=unnamed

nnoremap <silent> <Leader>r :source ~/.vim_runtime/my_configs.vim<CR> 
nnoremap <silent> <Leader>yy :%y+<CR>


if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
    let g:CommandTSelectNextMap = ['<C-j>', '<ESC>OB']
    let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

try
    colorscheme Tomorrow-Night
catch
endtry

set guifont=Droid\ Sans\ for\ Powerline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vnoremap $c <esc>`>a--><esc>`<i<!--<esc>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:NERDTreeWinPos = "left"
let g:nerdtree_tabs_open_on_console_startup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_theme="tomorrow"
let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctags/tagbar 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=32                          " Default is 40, seems too wide
noremap <silent> <Leader>y :TagbarToggle<CR>       " Display panel with y (or ,y)

