" Vim settings
let mapleader = ","
let leader = ","

syntax on

set encoding=UTF-8
set updatetime=300

set nocompatible
set number

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set showtabline=2

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual

set showmatch
set incsearch
set nohlsearch

set nobackup
set nowritebackup

set hidden

set cursorline

set showcmd

set cmdheight=2
set wildmenu

set signcolumn=yes

set shortmess+=c

set path+=**

set linebreak

set laststatus=2

set termguicolors

filetype plugin indent on

" Plugins
call plug#begin()
"Plug 'sheerun/vim-polyglot'
"Plug 'exu/pgsql.vim'
"Plug 'cespare/vim-toml'
"Plug 'vim-python/python-syntax'
"Plug 'rust-lang/rust.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'lervag/vimtex'
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'nickspoons/vim-sharpenup'
Plug 'tikhomirov/vim-glsl'
Plug 'mboughaba/i3config.vim'
Plug 'wgwoods/vim-systemd-syntax'
Plug 'tpope/vim-markdown'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'szw/vim-tags'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/taglist.vim'

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'Raimondi/delimitMate'
Plug 'svermeulen/vim-easyclip'
Plug 'thaerkh/vim-indentguides'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'matze/vim-move'
Plug 'kien/ctrlp.vim'
Plug 'yggdroot/leaderf'
Plug 'wincent/terminus'

Plug 'vim-airline/vim-airline'

Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'adrian5/oceanic-next-vim'
Plug 'kaicataldo/material.vim'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'

Plug 'ryanoasis/vim-devicons'
call plug#end()
" Configuration
let g:tex_flavor = 'latex'
let g:user_emmet_leader_key = ','
let g:sql_type_default = 'pgsql'
let g:NERDTreeWinSize = 23
let g:NERDTreeWinPos  = "left"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:python_highlight_all = 1
let g:rustfmt_autosave = 1
let g:OmniSharp_server_use_mono = 1
let g:airline_theme = 'material'
"let g:indentguides_spacechar = "→"
"let g:indentguides_tabchar = "→"
let g:indentguides_spacechar = "¦"
let g:indentguides_tabchar = "¦"
let g:Lf_WindowPosition = 'popup'
let g:rainbow_active = 1

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true,              -- false will disable the whole extension
    },
}
EOF

" Colorsheme
set background=dark

"let g:material_terminal_italics=1
"let g:material_theme_style = 'palenight'
"colo material
" default | palenight | ocean | lighter | darker | default-community | palenight-community | ocean-community | lighter-community | darker-community

"colo palenight

"colo dracula

colo monokai

"hi Normal ctermbg=none
"hi LineNr ctermbg=none
"hi! NonText ctermbg=none

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Keybindings
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nnoremap <C-k> kkkkkkkkkkzz
nnoremap <C-j> jjjjjjjjjjzz
xnoremap <C-k> kkkkkkkkkkzz
xnoremap <C-j> jjjjjjjjjjzz
nnoremap <C-h> g^
nnoremap <C-l> g$
xnoremap <C-h> g^
xnoremap <C-l> g$
onoremap <C-h> g^
onoremap <C-l> g$
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap <= <=
inoremap >= >=
inoremap <<Space> <<Space>
inoremap ><Space> ><Space>
" Copy
nnoremap <C-c> <S-v>:w !xclip -i -sel clipboard<CR><CR>
xnoremap <C-c> :w !xclip -i -sel clipboard<CR><CR>

" Shortcuts
nnoremap <Bar> :TagbarToggle<CR><C-w>l
nnoremap \ :NERDTreeToggle<CR>
nnoremap <Leader>c :CocCommand<CR>
" Git
command -nargs=1 GitCommit :!git add .; git commit -m<Space><f-args>
nnoremap <Leader>gc :GitCommit<Space>
nnoremap <Leader>gl :!git log --oneline --all --graph<CR>
nnoremap <Leader>gp :!git push<CR>
nnoremap <Leader>gi :!git init

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
aug i3config_ft_detection
    au!
    au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
aug polybarconfig_ft_detection
    au!
    au BufNewFile,BufRead ~/.config/polybar/config set filetype=dosini
aug end
