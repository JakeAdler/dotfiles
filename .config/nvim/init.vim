" =======================
" ======= Plugins
" =======================

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}            " Code completion
Plug 'scrooloose/nerdtree'                                 " File manager
Plug 'vim-airline/vim-airline'                             " Status bar
Plug 'joshdick/onedark.vim'                                " Theme
Plug 'tpope/vim-surround'                                  " Surroundings
Plug 'tomtom/tcomment_vim'                                " Comment helpers
Plug 'jiangmiao/auto-pairs'                                " ()[]{}''
Plug 'airblade/vim-gitgutter'                              " Show git changes in gutter
Plug 'Chiel92/vim-autoformat'                              " Autoformat
Plug 'junegunn/fzf.vim'                                    " Find things
Plug 'junegunn/goyo.vim'                                   " Zen mode
Plug 'voldikss/vim-floaterm'                               " Floating terminal
Plug 'SirVer/ultisnips'                                    " Snippets
Plug 'thaerkh/vim-indentguides'                            " Show indents
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'docunext/closetag.vim'
Plug 'neoclide/jsonc.vim'


call plug#end()

" =======================
" ======= Theme
" =======================

if (has("autocmd") && !has("gui_running"))             " Remove background from theme
	augroup colorset
		autocmd!
		let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
		autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })
	augroup END
endif

au BufReadPost *.tsx set syntax=typescript
let g:airline_theme='onedark'
colorscheme onedark

" =======================
" ======= Settings
" =======================

syntax on
filetype plugin indent on


set hidden
set spell
set spelllang=en_us
set title
set encoding=utf-8 nobomb
set linebreak
set number
set relativenumber
set wrap
set hidden
set lazyredraw
set history=999
set undolevels=999
set autoread
set nobackup
set nowritebackup
set noswapfile
set formatoptions+=j
set confirm
set cmdheight=2
set updatetime=300
set shortmess+=c
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set t_Co=256

" =======================
" ======= Mappings
" =======================

let mapleader=" "

let g:UltiSnipsExpandTrigger="wq"

let g:floaterm_keymap_kill   = '<F8>'
let g:floaterm_keymap_new    = '<F9>'
let g:floaterm_keymap_prev   = '<F10>'
let g:floaterm_keymap_next   = '<F11>'
let g:floaterm_keymap_toggle = '<F12>'

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

nnoremap <leader>l :GFiles <CR>

nnoremap <leader>f :Autoformat<CR>

nnoremap <leader>z :Goyo<CR>

nnoremap <leader>/ :Rg<CR>

inoremap jk <esc>

" Turn off key arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

" commands
 
command Browser execute ":silent !firefox %"


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -g "!package-lock.json" -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
" =======================
" ======= Coc
" =======================

inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" =======================
" ======= Autoformat
" =======================

let g:formatters_javascript = ['prettier']
let g:formatters_typescript = ['prettier']
let g:formatters_html = ['prettier']
let g:formatters_typescriptreact = ['prettier']

" =======================
" ======= Floaterm
" =======================
hi FloatermBorder guibg=orange guifg=cyan

let g:floaterm_shell         = 'fish'
let g:floaterm_autoclose     = 2



" =======================
" ======= NERDTree
" =======================

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" =======================
" ======= React
" =======================
"
"
"
"
