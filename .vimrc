set backspace=indent,eol,start
set number ruler wildmenu
syntax on
set mouse=a ttymouse=sgr
set splitright splitbelow autoread hidden
set display+=lastline display+=truncate
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j
set ignorecase smartcase hlsearch showmatch matchtime=2 incsearch
set foldopen-=hor foldopen-=block foldopen-=search foldmethod=indent foldlevel=100
set scrolloff=1 sidescroll=1 sidescrolloff=2
set noshowmode "hide insert showing in the help window
set autoindent expandtab tabstop=1 shiftwidth=1 laststatus=2
set complete-=i smarttab
set ttimeout ttimeoutlen=100
set termwinsize=10x0
set shortmess+=cTF
if has('termguicolors')
 set termguicolors
endif
"Colors
let g:molokai_original = 1
set background=dark
colorscheme molokai
" CoC popup colors — Molokai palette
hi Pmenu           guifg=#F8F8F2 guibg=#1B1D1E
hi PmenuSel        guifg=#A6E22E guibg=#49483E gui=bold
hi PmenuSbar       guibg=#2D2E27
hi PmenuThumb      guibg=#75715E
hi CocFloating     guifg=#F8F8F2 guibg=#1B1D1E
hi CocFloatBorder  guifg=#75715E guibg=#1B1D1E
hi CocMenuSel      guifg=#A6E22E guibg=#49483E gui=bold
hi CocErrorFloat   guifg=#F92672
hi CocWarningFloat guifg=#FD971F
hi CocInfoFloat    guifg=#66D9EF
hi CocHintFloat    guifg=#AE81FF
hi CocErrorSign    guifg=#F92672
hi CocWarningSign  guifg=#FD971F
hi CocInfoSign     guifg=#66D9EF
hi CocHintSign     guifg=#AE81FF
"Binds
let mapleader = "\<Space>"
noremap <Space> <Nop>
nmap <F4> :wall<CR>:bufdo bd<CR>:Ex<CR> "close all with f4
nnoremap <leader>= <C-w>=
nnoremap <silent> <leader>l :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
autocmd BufRead,BufNewFile terraform.tfvars set filetype=terraform-vars syntax=terraform
"Plugins
let g:rainbow_active = 1
let g:popup_scrollbar_auto = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number, 2 is buffers, 3 is both
let g:airline#extensions#tabline#show_buffers = 0 
"mergetool
if &diff
 map <leader>1 :diffget LOCAL<CR>
 map <leader>2 :diffget BASE<CR>
 map <leader>3 :diffget REMOTE<CR>
endif
source ~/.vim/coc_config.vim "COC gives ide config stuff, and its quite long
""fzf and file opening and finding
set rtp+=/opt/homebrew/opt/fzf "set to where it's installed
nnoremap <leader>p :Files<CR>
nnoremap <leader>r :Rg<CR>
let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git'
let $FZF_DEFAULT_OPTS="--preview 'bat --color=always --theme=Monokai Extended --paging=never --style=numbers --line-range :150 {}' --preview-window 'right:57%'
\ --bind ctrl-y:preview-up,ctrl-e:preview-down,
 \ctrl-b:preview-page-up,ctrl-f:preview-page-down,
 \ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
 \shift-up:preview-top,shift-down:preview-bottom,
 \alt-up:half-page-up,alt-down:half-page-down"
 "Scroll fzf windows windows properly
