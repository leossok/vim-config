augroup filetypedetect "{{{

	autocmd BufNewFile,BufRead */.config/git/users/* setfiletype gitconfig

	autocmd BufNewFile,BufRead */playbooks/*.{yml,yaml} setfiletype yaml.ansible
	autocmd BufNewFile,BufRead */inventory/*            setfiletype ansible_hosts
	" autocmd BufNewFile,BufRead */templates/*.{yaml,tpl} setfiletype yaml.gotexttmpl

	autocmd BufNewFile,BufRead *.hcl                setfiletype terraform
	autocmd BufNewFile,BufRead yarn.lock            setfiletype yaml
	autocmd BufNewFile,BufRead */.kube/config       setfiletype yaml
	autocmd BufNewFile,BufRead *.postman_collection setfiletype json
	autocmd BufNewFile,BufRead .tern-{project,port} setfiletype json
	autocmd BufNewFile,BufRead *.js.map             setfiletype json
	autocmd BufNewFile,BufRead .jsbeautifyrc        setfiletype json
	autocmd BufNewFile,BufRead .eslintrc            setfiletype json
	autocmd BufNewFile,BufRead .jscsrc              setfiletype json
	autocmd BufNewFile,BufRead .babelrc             setfiletype json
	autocmd BufNewFile,BufRead .watchmanconfig      setfiletype json
	autocmd BufNewFile,BufRead .buckconfig          setfiletype toml
	autocmd BufNewFile,BufRead .flowconfig          setfiletype ini
	autocmd BufNewFile,BufRead Jenkinsfile*         setfiletype groovy
	autocmd BufNewFile,BufRead Tmuxfile,tmux/config setfiletype tmux
	autocmd BufNewFile,BufRead Brewfile             setfiletype ruby


	" Highlight current line only on focused window, unless:
	" 1. Cursor-line is already set to wanted value
	" 2. Denite or Clap buffers
	" 3. Preview window
	" 4. Completion popup menu is visible
	autocmd WinEnter,BufEnter,InsertLeave *
		\ if ! &cursorline && &filetype !~# '^\(denite\|clap_\|.*quickpick\)'
		\      && ! &previewwindow && ! pumvisible()
		\ | setlocal cursorline
		\ | endif
	autocmd WinLeave,BufLeave,InsertEnter *
		\ if &cursorline && &filetype !~# '^\(denite\|clap_\|.*quickpick\)'
		\      && ! &previewwindow && ! pumvisible()
		\ | setlocal nocursorline
		\ | endif

	" Automatically set read-only for files being edited elsewhere
	autocmd SwapExists * nested let v:swapchoice = 'o'

	" Update diff comparison once leaving insert mode
	autocmd InsertLeave * if &l:diff | diffupdate | endif

	" Equalize window dimensions when resizing vim window
	autocmd VimResized * wincmd =

	" Force write shada on leaving nvim
	autocmd VimLeave * if has('nvim') | wshada! | else | wviminfo! | endif

	" Check if file changed when its window is focus, more eager than 'autoread'
	autocmd FocusGained * checktime

	autocmd Syntax * if line('$') > 5000 | syntax sync minlines=200 | endif

	" When editing a file, always jump to the last known cursor position.
	" Credits: https://github.com/farmergreg/vim-lastplace
	autocmd BufReadPost *
		\ if index(['gitcommit', 'gitrebase', 'svn', 'hgcommit'], &buftype) == -1 &&
		\      index(['quickfix', 'nofile', 'help'], &buftype) == -1 &&
		\      ! &diff && ! &previewwindow &&
		\      line("'\"") > 0 && line("'\"") <= line("$")
		\|   if line("w$") == line("$")
		\|     execute "normal! g`\""
		\|   elseif line("$") - line("'\"") > ((line("w$") - line("w0")) / 2) - 1
		\|     execute "normal! g`\"zz"
		\|   else
		\|     execute "normal! \G'\"\<c-e>"
		\|   endif
		\|   if foldclosed('.') != -1
		\|     execute 'normal! zvzz'
		\|   endif
		\| endif

	autocmd FileType apache setlocal path+=./;/

	autocmd FileType html setlocal path+=./;/

	autocmd FileType crontab setlocal nobackup nowritebackup

	autocmd FileType yaml.docker-compose setlocal expandtab

	autocmd FileType gitcommit setlocal spell

	autocmd FileType gitcommit,qfreplace setlocal nofoldenable

	autocmd FileType php setlocal matchpairs-=<:> iskeyword+=\\

	autocmd FileType python
		\ setlocal expandtab smarttab nosmartindent
		\ | setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=100

	autocmd FileType [c,cpp,h,hpp]
		\ setlocal expandtab smarttab nosmartindent
		\ | setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=100

	autocmd FileType markdown
		\ setlocal expandtab nospell conceallevel=0
		\ | setlocal autoindent formatoptions=tcroqn2 comments=n:>


augroup END
