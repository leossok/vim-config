call plug#begin('~/.config/nvim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'Valloric/MatchTagAlways', {'for': ['xml','html']}
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-sleuth'
Plug 'godlygeek/tabular'
Plug 'lambdalisue/gina.vim'
Plug 'pechorin/any-jump.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'machakann/vim-sandwich'
Plug 'mbbill/undotree', {'on': ['UndotreeToggle', 'UndotreeFocus']}
Plug 'preservim/tagbar'
Plug 'honza/vim-snippets'

"-- snippets --"
Plug 'SirVer/ultisnips'
let g:UltiSnipsSnippetsDir = "~/.config/nvim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"-- airline --"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='fruit_punch'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
"-- UI elements --"
set showbreak=↪
set fillchars=vert:│,fold:─
set listchars=tab:\▏\ ,extends:⟫,precedes:⟪,nbsp:␣,trail:·
"-- unicode symbols --"
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

"-- wiki  \ww --"
Plug 'vimwiki/vimwiki'
let g:vimwiki_use_calendar = 1
let g:vimwiki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_autowriteall = 0
let g:vimwiki_list = [
    \   { 'diary_header': 'Diary',
    \     'diary_link_fmt': '%Y-%m/%d',
    \     'auto_toc': 1,
    \     'path': '~/docs/wiki/',
    \     'syntax': 'markdown',
    \     'ext': '.md' },
    \   { 'path': '~/docs/books/',
    \     'syntax': 'markdown',
    \     'ext': '.md' }
    \ ]

"-- yank highlight --"
Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 100

"-- gitgutter --"
Plug 'airblade/vim-gitgutter'
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▍'
let g:gitgutter_sign_removed_first_line = '▘'
let g:gitgutter_sign_removed_above_and_below = '_¯'
let g:gitgutter_sign_modified_removed = '▍'
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_sign_priority = 0
let g:gitgutter_override_sign_column_highlight = 0
highlight! GitGutterAdd ctermfg=22 guifg=#008500 ctermbg=234 guibg=#1c1c1c
highlight! GitGutterChange ctermfg=58 guifg=#808200 ctermbg=234 guibg=#1c1c1c
highlight! GitGutterDelete ctermfg=52 guifg=#800000 ctermbg=234 guibg=#1c1c1c
highlight! GitGutterChangeDelete ctermfg=52 guifg=#800000 ctermbg=234 guibg=#1c1c1c

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\}
let g:tagbar_iconchars = ['▷', '◢']

"-- NERDTree --"
Plug 'preservim/nerdtree', { 'on':  ['NERDTreeFocus', 'NERDTreeToggle'] }
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/coding.vim'
call plug#end()
