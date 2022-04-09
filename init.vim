lua require('map_leader')

lua require('plugins')
lua require('cmp_config')
lua require('lsp_config')

lua require('color')
lua require('settings')

lua require('search')
lua require('treesitter')

inoremap jj <Esc>`^

" Prefer ripgrep over the stock grep
set grepprg=rg\ --color=never
"let g:markdown_fenced_languages = ['python', 'haskell', 'scheme', 'yaml', 'toml']

" Python
let g:python3_host_prog = '/home/blake/.local/share/nvim/python3-venv/bin/python'

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

highlight Normal ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
