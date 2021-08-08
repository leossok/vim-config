"-- Javascript --"
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
let g:javascript_plugin_jsdoc = 1

"-- Python --"
Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
Plug 'vim-python/python-syntax', { 'for': 'python' }

"-- MarkDown --"
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
let g:vim_markdown_frontmatter = 1
    let g:vim_markdown_strikethrough = 1
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_conceal = 1
    let g:vim_markdown_conceal_code_blocks = 0
    let g:vim_markdown_new_list_item_indent = 0
    let g:vim_markdown_toc_autofit = 0
    let g:vim_markdown_edit_url_in = 'vsplit'
    let g:vim_markdown_fenced_languages = [
      \ 'c++=cpp',
      \ 'viml=vim',
      \ 'bash=sh',
      \ 'ini=dosini',
      \ 'js=javascript',
      \ 'json=javascript',
      \ 'jsx=javascriptreact',
      \ 'tsx=typescriptreact',
      \ 'docker=Dockerfile',
      \ 'makefile=make',
      \ 'py=python'
      \ ]
