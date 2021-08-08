let $DATA_PATH =
	\ expand('~/.cache/nvim', 1)

"-- config --"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/plugins.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/general.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/keymap.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/filetype.vim'
"execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/statusline.vim'
"execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/tabline.vim'

"-- extra-plugins --"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/extra-plugins/sessions.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/extra-plugins/jumpfile.vim'

"-- Editor UI --"
syntax on
colorscheme monokai-soda
