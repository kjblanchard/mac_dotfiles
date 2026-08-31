" ---------- General ----------
set backspace=indent,eol,start
set noruler
set cursorline
set encoding=utf-8
scriptencoding utf-8
" set number relativenumber
set number
" Don't use the system clipboard in vim
" set clipboard^=unnamed,unnamedplus
set mouse=a
if !has('nvim')
  set ttymouse=sgr
endif
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=number
set splitright
set splitbelow
set hidden
syntax enable
set laststatus=2
set showtabline=2
set guioptions-=e
if has('termguicolors')
  set termguicolors
endif
" yml fix
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"statusline for flagship

" set statusline=
" set statusline+=%f
" set statusline+=%m
" set statusline+=%r
" set statusline+=%=
" set statusline+=%y
" set statusline+=\ %l:%c
" set statusline+=\ %p%%
set statusline=%{mode()}\ %f%=%l:%c


"popup colors fix with selenized
augroup CocMenuColors
  autocmd!
  autocmd ColorScheme * highlight CocMenuSel guibg=#005f87 guifg=#ffffff ctermbg=24 ctermfg=15
augroup END


" ---------- Indentation ----------
set tabstop=4
set shiftwidth=4
set expandtab

" ---------- Search ----------
set ignorecase
set smartcase
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,\
      \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,\
      \rake-pipeline-*

" ---------- Visual ----------
set showmatch
set matchtime=2
set listchars=tab:▸▸,trail:•,extends:>,precedes:<

" ---------- Leader & mappings ----------
let mapleader = "\<Space>"
noremap <Space> <Nop>

" ---------- Splits ----------
nmap <F4> :wall<CR>:bufdo bd<CR>:Ex<CR>
map <F5> :!make debug<CR>
map <F7> :make build<CR>
nnoremap <leader>' :vsplit<CR>
nnoremap <leader>5 :split<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>n :tabnext<CR>

nnoremap <leader>m <C-w>_<C-w>\|
nnoremap <leader>= <C-w>=


" ---------- Folds ----------
set foldopen-=hor
set foldopen-=block
set foldopen-=search
set foldmethod=indent
set nofoldenable    " disable folding
" set foldlevel=0

" --- Allow find to work as a file opener ---
" nnoremap <leader>p :find<Space>
set path=
set path+=**
set wildmenu
set wildignore+=*/node_modules/*,*/.git/*,*/build/*
set wildignorecase
set wildoptions=pum
set pumheight=10

" Use <Tab> to jump to next snippet placeholder
set complete-=i
set smarttab
set nrformats-=octal
set ttimeout
nnoremap <silent> <leader>l :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
set ttimeoutlen=100
set scrolloff=1
set sidescroll=1
set sidescrolloff=2
set display+=lastline
set display+=truncate
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set autoread
set history=1000
autocmd BufRead,BufNewFile terraform.tfvars set filetype=terraform-vars syntax=terraform


filetype plugin indent on
if !has('nvim')
  " let g:molokai_original = 1
  set background=dark
  colorscheme molokai
  " colorscheme PaperColor
  " colorscheme gruvbox
  " colorscheme selenized
endif
set noshowmode

if !has('nvim')
  source ~/.vim/coc_config.vim
  source ~/.vim/fzf_config.vim
  " source ~/.vim/status_bar.vim
  " source ~/.vim/tab_numbers.vim
endif


" Clear status line when vimrc is reloaded.
" allow to switch buffers when not saved
set hidden
set showtabline=2
" handle other module files
autocmd BufNewFile,BufRead *.cppm,*.ixx,*.mpp setlocal filetype=cpp
set termwinsize=10x0
