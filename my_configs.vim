"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=5000
"set number

set splitright
set splitbelow

set undolevels=50000
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list
nnoremap <silent> <Leader>E :source ~/.vim_runtime/my_configs.vim<CR> 
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => command-t 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:CommandTMaxHeight = 30
let g:CommandTMaxFiles = 500000
let g:CommandTInputDebounce = 200
let g:CommandTFileScanner = 'watchman'
let g:CommandTMaxCachedDirectories = 10
let g:CommandTSmartCase = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-startify 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:startify_custom_header = map(split(system('fortune | cowsay '), '\n'), '"   ". v:val') + ['',''] 
noremap <silent> <Leader>S :NERDTreeClose<CR>:SSave<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => editorconfig
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EditorConfig_core_mode = 'external_command'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YankRing
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <silent> <Leader>R :YRShow<CR>

let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }
let g:syntastic_scss_sass_quiet_messages = {
    \ "regex": 'File to import not found or unreadable', }


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': '',
  \ }
