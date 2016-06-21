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
nnoremap <silent> <Leader>JC :let g:ctrlp_working_path_mode = 0<CR>
nnoremap <silent> <Leader>JR :let g:ctrlp_working_path_mode = 'ra'<CR>

if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
    let g:CommandTSelectNextMap = ['<C-j>', '<ESC>OB']
    let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

try
    colorscheme lucius
catch
endtry

set guifont=Droid\ Sans\ for\ Powerline
let g:mirodark_disable_color_approximation=1
let g:lucius_contrast_bg='high'

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf     " MacOSX/Linux
let g:ctrlp_show_hidden = 1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': '',
  \ }
let g:ctrlp_working_path_mode = 'ra'

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor 

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
