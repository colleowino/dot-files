" tab width settings 	
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
			
	" Don't swap in my working directory
set directory^=$HOME/.vim/swap/
