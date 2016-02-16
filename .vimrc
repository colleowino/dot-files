	set timeoutlen=600			" capture kj as a single command 
	set ts=2								" tabs should have width of 2
	set shiftwidth=2				" size of an "indent"
	set softtabstop=2				" combination of spaces/tabs to stimulate tab width
	set ruler								" show row and column in footer
	set autoindent					" set auto indent
	set number							"	enable line numbering
	set incsearch						" highlight as i type the search keyword
	set hlsearch						" highlight found words after search
	set lazyredraw					" improve screen update speed
	set nocompatible				" no neet to be compatible with old vi
	set ignorecase					" case insensitive search
	set cursorline					" hightlight current line
	set laststatus=2				" always show status bar
	set wildmenu						" enable bash style tab completion
	set nomodeline					" avoid: Error detected while processing modelines
	set showcmd     				" show typed keys
	set title								" let vim modify the terminal title
	set autoread						" notify about external file changes when saving 
	set noswapfile					" http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287	
	set backspace=indent,eol,start			" Fixed some backspace issues
	set listchars=tab:▸\ ,eol:¬		" Use the same symbols as TextMate for tabstops and EOLs
	set nobackup
	set nowritebackup
	set directory^=$home/.vim/swap/		" don't swap in my working directory
	syntax on
	filetype plugin indent on

	call pathogen#infect()							" init pathogen
	nnoremap Q <nop>										" removed Ex mode

	" use kj to leave insert mode 
	inoremap kj <esc>				

	" automatic commands
	if has("autocmd")
		" enable file type detection
		filetype on
		" treat .json file as .js
		autocmd bufnewfile,bufread *.json setfiletype json syntax=javascript
	endif

	" let vim reload on saving .vimrc 
	augroup reload_vimrc " {
		autocmd!
				autocmd BufWritePost $MYVIMRC source $MYVIMRC
			augroup END " }

	" turn on spell checker for markdown
	autocmd BufRead,BufNewFile *.md setlocal spell
	" Autocomplete with dictionary words when spell check is on
	set complete+=kspell
	" map spell checker to F5 in insert mode
	imap <F5> <C-o>:setlocal spell! spelllang=en_us<CR>

	" toggle showing invisible chars with <leader> q
	nmap <leader>L :set list!<CR>
	
	nnoremap <Leader>9 "+p					" paste from global buffer using <leader>9


	" ---------------------------------------------
	" Themes and colors 
	" ---------------------------------------------
	
	if !has('gui_running')
		set t_Co=256
	endif

	if &term =~ '256color'
		" disable Background Color Erase (BCE) so that color schemes
		" render properly when inside 256-color tmux and GNU screen.
		" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
		set t_ut=
	endif

	" set color and background
	set background=light 
	colo bclear

	let g:lightline = {
				\ 'colorscheme': 'wombat',
				\ }

	" ---------------------------------------------
	" File: Opening closing and updating
	" ---------------------------------------------
	
	" normal mode: save
	nnoremap <c-s> :w<cr> 
	" insert mode: escape to normal and save
	inoremap <c-s> <Esc>:w<CR> 
	" insert mode: escape to normal and save
	vnoremap <c-s> <Esc>:w<CR> 

	" update contents <leader>q 
	nmap <leader>Q :e! <CR>

	" ---------------------------------------------
	" Easy motion settings
	" ---------------------------------------------

	let g:EasyMotion_startofline = 0					" keep cursor column when JK motion

	" scroll vim autocomple with j-k instead of Ctrl+n/ctrl+p
	inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
	inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

	"easy-motion 2 char search 
	nmap s <Plug>(easymotion-s2)
	nmap t <Plug>(easymotion-t2)

	"easy-motion replace default find
	map  / <Plug>(easymotion-sn)
	omap / <Plug>(easymotion-tn)

	" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
	" Without these mappings, `n` & `N` works fine. (These mappings just provide
	" different highlight method and have some other features )
	map  n <Plug>(easymotion-next)
	map  N <Plug>(easymotion-prev)

	"easy-motion hjkl motions
	map <Leader>l <Plug>(easymotion-lineforward)
	map <Leader>j <Plug>(easymotion-j)
	map <Leader>k <Plug>(easymotion-k)
	map <Leader>h <Plug>(easymotion-linebackward)

	" ---------------------------------------------
	" Word wrapping
	" ---------------------------------------------

	" DISABLED: visual warning that 80 colum mark passed	
	" augroup vimrc_autocmds
	" 	autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
	" 	autocmd BufEnter * match OverLength /\%90v.*/
	" augroup END

	" using X shouldn't change the current register
	noremap x "_x

	" toggle colored right border after <size> chars
	set colorcolumn=90
	let s:color_column_old = 0

	function! s:ToggleColorColumn()
			if s:color_column_old == 0
					let s:color_column_old = &colorcolumn
					windo let &colorcolumn = 0
			else
					windo let &colorcolumn=s:color_column_old
					let s:color_column_old = 0
			endif
	endfunction

	nnoremap <Leader>8 :call <SID>ToggleColorColumn()<cr>
	
	" ---------------------------------------------
	" fugitive git bindings
	" ---------------------------------------------
	
	" nnoremap <space>ga :Git add %:p<CR><CR>
	" nnoremap <space>gs :Gstatus<CR>
	" nnoremap <space>gc :Gcommit -v -q<CR>
	" nnoremap <space>gt :Gcommit -v -q %:p<CR>
	" nnoremap <space>gd :Gdiff<CR>
	" nnoremap <space>ge :Gedit<CR>
	" nnoremap <space>gr :Gread<CR>
	" nnoremap <space>gw :Gwrite<CR><CR>
	" nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
	" nnoremap <space>gp :Ggrep<Space>
	" nnoremap <space>gm :Gmove<Space>
	" nnoremap <space>gb :Git branch<Space>
	" nnoremap <space>go :Git checkout<Space>
	" nnoremap <space>gps :Dispatch! git push<CR>
	" nnoremap <space>gpl :Dispatch! git pull<CR>
