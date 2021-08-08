""""""""""""""""""""""""""""
"-- Colon-control prefix --"
nnoremap  [Colcon]   <Nop>
nmap      ; [Colcon]
""""""""""""""""""""""""""""
" Window-control prefix
nnoremap  [Window]   <Nop>
nmap      s [Window]
""""""""""""""""""""""""""""
""""""""""""""""""""""""""""

"-- Tagbar --"
nnoremap <Leader>tb :TagbarToggle<CR>

"-- UndoTree --"
nnoremap <Leader>ut :UndotreeToggle<CR>

"-- NERDTree --"
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>

" Scroll step sideways
nnoremap zl z4l
nnoremap zh z4h

" Use backspace key for matching parens
nmap <BS> %
xmap <BS> %

" Indent and jump to first non-blank character linewise
nmap >>  >>_
nmap <<  <<_

" Start an external command with a single bang
nnoremap ! :!

"-- Session management shortcuts (see extra-plugins/sessions.vim) --"
nmap [Colcon]se :<C-u>SessionSave<CR>
nmap [Colcon]sl :<C-u>SessionLoad<CR>

"-- Tabs --"
nnoremap <silent> [Window]1 :<C-u>tabfirst<CR>
nnoremap <silent> [Window]2 :<C-u>tablast<CR>
nnoremap <silent> [Window][ :<C-U>tabprevious<CR>
nnoremap <silent> [Window]] :<C-U>tabnext<CR>
nnoremap <silent> [Window]{ :<C-u>-tabmove<CR>
nnoremap <silent> [Window]} :<C-u>+tabmove<CR>
noremap <silent> [Window]c  :close<CR>

nnoremap <silent> [Window]v  :<C-u>split<CR>
nnoremap <silent> [Window]g  :<C-u>vsplit<CR>
nnoremap <silent> [Window]t  :tabnew<CR>
nnoremap <silent> [Window]o  :<C-u>only<CR>

"-- Buffers --"
nnoremap [Window]_ :<C-u>call JumpBuffer(-1)<CR>
nnoremap [Window]+ :<C-u>call JumpBuffer(1)<CR>
nnoremap [Window]- :<C-u>bprevious<CR>
nnoremap [Window]= :<C-u>bnext<CR>
nnoremap [Window]0 :<C-u>bdelete<CR>

