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
	  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
		au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
	endif
			
	" use kj to leave insert mode 
	inoremap kj <Esc>				
	" Don't swap in my working directory
	set directory^=$HOME/.vim/swap/
	set title								" let vim modify the terminal title

	set timeoutlen=500

	" Automatic commands
	if has("autocmd")
		" Enable file type detection
		filetype on
		" Treat .json file as .js
		autocmd BufNewFile,Bufread *.json setfiletype json syntax=javascript
	endif

	" normal mode: save
	nnoremap <c-s> :w<CR> 
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


