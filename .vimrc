set backspace=indent,eol,start
set number
set mouse=a
set splitright
set splitbelow
set ignorecase
set smartcase
set hlsearch
set showmatch
set matchtime=2
set ttymouse=sgr
set foldopen-=hor
set foldopen-=block
set foldopen-=search
set foldmethod=indent
set foldlevel=100
set termwinsize=10x0
set splitright
set splitbelow
if has('termguicolors')
    set termguicolors
endif
colorscheme molokai
"statusline and tabline for flagship
set statusline=\ %{mode()}\ %f%=%l:%c
function! TabFiles(tabnr) abort
    return join(map(tabpagebuflist(a:tabnr),
                \ 'empty(bufname(v:val)) ? "[No Name]" : fnamemodify(bufname(v:val), ":t")'),
                \ '│')
endfunction
let g:tablabel = "%N%{flagship#tabmodified()} %{TabFiles(v:lnum)}"
let mapleader = "\<Space>"
"Keybinds
noremap <Space> <Nop>
nmap <F4> :wall<CR>:bufdo bd<CR>:Ex<CR>
nnoremap <leader>= <C-w>=
nnoremap <silent> <leader>l :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
autocmd BufRead,BufNewFile terraform.tfvars set filetype=terraform-vars syntax=terraform
"fzf and file opening and finding
nnoremap <leader>p :Files<CR>
nnoremap <leader>r :Rg<CR>
let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git'
"Scroll fzf windows windows properly
let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --color=always  --style=numbers --line-range :300 {}'
            \ --bind ctrl-y:preview-up,ctrl-e:preview-down,
            \ctrl-b:preview-page-up,ctrl-f:preview-page-down,
            \ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
            \shift-up:preview-top,shift-down:preview-bottom,
            \alt-up:half-page-up,alt-down:half-page-down"
source ~/.vim/coc_config.vim
