	" leader
	let mapleader = " "
	set ts=2								" tabs should have width of 2
	set shiftwidth=2				" size of an "indent"
	set softtabstop=2				" combination of spaces/tabs to stimulate tab width
	set ruler								" show row and column in footer
	set autoindent					" set auto indent
	colorscheme monokai
	set number							"	enable line numbering
	set incsearch						" highlight as i type the search keyword
	set hlsearch						" highlight found words after search
	
	set lazyredraw					" improve screen update speed
	set nocompatible				" no neet to be compatible with old vi
	set ignorecase					" case insensitive search
	set cursorline					" hightlight current line
	set laststatus=2				" always show status bar
	set wildmenu						" enable bash style tab completion
	" highlight the status bar when in insert mode
	if version >= 700
	  au insertenter * hi statusline ctermfg=235 ctermbg=2
		au insertleave * hi statusline ctermbg=240 ctermfg=12
	endif
	" use kj to leave insert mode 
	inoremap kj <esc>				
	" don't swap in my working directory
	set directory^=$home/.vim/swap/
	set nobackup
	set nowritebackup
	set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287	
	set title								" let vim modify the terminal title

	set timeoutlen=600

	" automatic commands
	if has("autocmd")
		" enable file type detection
		filetype on
		" treat .json file as .js
		autocmd bufnewfile,bufread *.json setfiletype json syntax=javascript
	endif

	" normal mode: save
	nnoremap <c-s> :w<cr> 
	" insert mode: escape to normal and save
	inoremap <c-s> <Esc>:w<CR> 
	" insert mode: escape to normal and save
	vnoremap <c-s> <Esc>:w<CR> 

	call pathogen#infect()
	" You probably already have these lines. Add them if not:
	syntax on
	filetype plugin indent on
		
	" remove Ex mode 
	nnoremap Q <nop>

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

	" Make it obvious where 80 characters is
	set textwidth=90
	set colorcolumn=+1

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

	let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
