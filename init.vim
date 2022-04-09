lua require('map_leader')

lua require('plugins')
lua require('cmp_config')
lua require('lsp_config')

lua require('color')
lua require('settings')

lua require('search')
lua require('treesitter')

" ... General Formatting ......................................................
" set tabstop=8
" set expandtab
" set softtabstop=4
" set shiftwidth=4
" set shiftround
" set tw=88
" set re=1
" set termguicolors


" ... Plugin Management .......................................................
"filetype off
"call plug#begin()

" Editing ergonomics plugins
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'easymotion/vim-easymotion'
" Plug 'gcmt/taboo.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
" Plug 'w0rp/ale'
" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'hashivim/vim-terraform,'
" 
" " Themes and Colors
" Plug 'ayu-theme/ayu-vim'
" Plug 'flazz/vim-colorschemes'
" Plug 'thenewvu/vim-colors-blueprint'
" 
" " Language Server Configuration
" " Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 
" " Languages and Filetypes
" Plug 'Quramy/tsuquyomi'  " Language server for Typescript
" Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'cespare/vim-toml'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'exu/pgsql.vim'
" "Plug 'fatih/vim-go'
" Plug 'leafgarland/typescript-vim'
" "Plug 'neovimhaskell/haskell-vim'
" "Plug 'ocaml/vim-ocaml'
" Plug 'pangloss/vim-javascript'
" Plug 'rust-lang/rust.vim'
" Plug 'tpope/vim-markdown'
" Plug 'vim-python/python-syntax'
" Plug 'pest-parser/pest.vim'
" Plug 'glench/vim-jinja2-syntax'

"call plug#end()


" ... Ergonomics Configuration ................................................
" set foldmethod=syntax

" nnoremap <Space> <nop>
" let mapleader = ' '

" Add C-p back after leaving ctrlp behind
"set rtp+=~/.fzf
"nmap <C-p> :FZF<cr>
"nmap <leader><C-p> :Buffers<cr>

" Escape without pressing escape
inoremap jj <Esc>`^

" let g:EasyMotion_leader_key = '<Leader><Leader>'

" Prefer ripgrep over the stock grep
set grepprg=rg\ --color=never
" let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
" let g:ctrlp_use_caching = 0

" Fix up the autocompletion ergonomics
" let g:deoplete#enable_at_startup = 1
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" inoremap <silent><expr> <c-space> coc#refresh()

" CoC Actions
" nmap <silent><leader>cc :call CocActionAsync('doHover')<cr>

" Tab Pages
" nmap <leader>tt :tabnew<cr>
" nmap <leader>td :tabclose<cr>
" nmap <leader>tn :tabnext<cr>
" nmap <leader>tp :tabprev<cr>
" nmap <leader>t, :TabooRename 

" Buffers
" nmap <leader>bb :new<cr>
" nmap <leader>bd :bdelete<cr>
" nmap <leader>bn :bnext<cr>
" nmap <leader>bp :bprev<cr>

" Search for things
" nmap <leader>fb :Buffers<cr>
" nmap <leader>fc :Colors<cr>
" nmap <leader>ff :Files<cr>
" nmap <leader>fg :GFiles<cr>
" nmap <leader>fr :Rg<cr>


" When a tab page is closed, move to the tab to the left
" function! MoveToTabOnLeft()
"     let curtab = tabpagenr()
"     let tabonleft = curtab - 1
"     exe tabonleft."tabnext"
" endfunction
" 
" augroup tabonleft
"     au!
"     au TabClosed * call MoveToTabOnLeft()
" augroup END


" ... Editor Appearance (Themes & Colors) .....................................
" set number
" set relativenumber

"let ayucolor="dark"
"colorscheme nord
" colorscheme seagull
"colorscheme CandyPaper
"set background=light
"colorscheme PaperColor


" Get rid of the pipes; note the whitespace!
"set fillchars+=vert:\ 

" Required for operations modifying multiple buffers like rename.
" set hidden

" filetype plugin on


" ... Languages and Filetypes .................................................
" Apply ALE fixers
" nmap <silent> <leader>af :ALEFix<cr>

" Easy motions for ALE syntax errors.
" nmap <silent> <leader>aj :ALENext<cr>
" nmap <silent> <leader>ak :ALEPrevious<cr>

" Markdown
let g:markdown_fenced_languages = ['python', 'haskell', 'scheme', 'yaml', 'toml']

" Python
" let g:python2_host_prog = '/users/blakehyde/venv/neovim2/bin/python'
let g:python3_host_prog = '/home/blake/.local/share/nvim/python3-venv/bin/python'
"let g:ale_python_flake8_executable = '/Users/blakehyde/.pyenv/versions/3.8.0/bin/flake8'

" let g:ale_linters = {
"             \ "python": ["flake8", "pylint"],
"             \ "rst": [],
"             \ }

" JavaScript and TypeScript
" let g:ale_fixers = {
"             \ "css": ["prettier"],
"             \ "javascript": ["prettier"],
"             \ "python": ["black"],
"             \ "rust": [],
"             \ "typescript": ["prettier"],
"             \}
" let g:tsuquyomi_completion_detail = 1

" Go (ew)
" au FileType go set ts=4
" au FileType go set noexpandtab

" ... Colors and Highlighting Tweaks ..........................................

" Italic comments, regardless of the color scheme.
hi Comment gui=italic

" Italic, normal-colored string literals, regardless of the color scheme.
hi clear String
hi String gui=italic

" A convenience function for determining what the current syntax grouping is.
function! SynGroup()                                                            
    let l:s = synID(line('.'), col('.'), 1)                                       
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

" highlight Normal ctermbg=NONE guibg=NONE
" highlight SignColumn ctermbg=NONE guibg=NONE
" highlight LineNr ctermbg=NONE guibg=NONE

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
