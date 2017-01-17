	let mapleader = " "			" leader
	set timeoutlen=600			" capture kj as a single command 
	set ts=2								" tabs should have width of 2
	set shiftwidth=2				" size of an indent
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
	" Use the same symbols as TextMate for tabstops and EOLs
	set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣
	set nobackup
	set nowritebackup
	set directory^=$home/.vim/swap/		" don't swap in my working directory
	" syntax on
	filetype plugin indent on

	" ---------------------------------------------
	" vim-plug section 'use single quotes'
	" ---------------------------------------------
	call plug#begin('~/.vim/plugged') 

	" disable word highlight with cursor movement

	" utilites
	" -------------------
	Plug 'itchyny/calendar.vim'            " :calendar
	Plug 'vim-scripts/ZoomWin'             " zoom current window <c-w>o
	Plug 'easymotion/vim-easymotion'
	Plug 'MattesGroeger/vim-bookmarks'     " <leader>mm to toggle, <leader>mn next
	Plug 'nathanaelkane/vim-indent-guides'
 	Plug 'bilalq/ruby-matchit'
	Plug 'tpope/vim-unimpaired'
	Plug 'scrooloose/nerdtree'             " Toggle with <F5>
	Plug 'tpope/vim-fugitive'              " git wrapper :Gcommit/write/status/git
	Plug 'airblade/vim-gitgutter'          " highlight : gl, next/prev : gj/gk
	Plug 'majutsushi/tagbar'               " autotag <f8>
	Plug 'christoomey/vim-tmux-navigator'	" <c-h/j/k/l> withing tabs and tmux
	Plug 'mtth/scratch.vim'               " temporary notes :Scratch
	Plug 'blueyed/vim-diminactive'         " dim other windows automatically
	Plug 'junegunn/limelight.vim'          " focus		:Limelight1/0.1
	Plug 'junegunn/goyo.vim'
	Plug 'itchyny/lightline-powerful'
	Plug 'itchyny/lightline.vim'
	"OFF! Plug 'b4b4r07/vim-favdir'				"save dirs Reg/del/show {name}, Gg {dir} 

	" search tools
	" -------------------
	Plug 'pgdouyon/vim-evanesco'      " removes highlight on cursor move
	Plug 'vim-scripts/mru.vim'				"	:MRU to view all recent files, <leader>o
	Plug 'vim-scripts/Rename'					"	saveas
	Plug 'rking/ag.vim'
	Plug 'Chun-Yang/vim-action-ag'
	Plug 'wincent/command-t'
	Plug 'kien/ctrlp.vim'
	Plug 'dyng/ctrlsf.vim'
	
	" autocompletion
	" -------------------
	Plug 'chrisgillis/vim-bootstrap3-snippets' "bootstrap snippets 
	Plug 'SirVer/ultisnips'						" snipName <leader><leader>,  <C-j/k>
	Plug 'honza/vim-snippets'					" ultisnips folder for ultisnips completions
	Plug 'tpope/vim-endwise'					"	adds matching end tag ruby
	Plug 'mattn/emmet-vim'						" <C-y> + , | d, i, m(merge lines) k(remove block)
																		" /(toggle comment)
	Plug 'Valloric/YouCompleteMe'
	" added snipmate
	Plug 'garbas/vim-snipmate'
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'

	" refactoring tools
	" -------------------
	Plug 'godlygeek/tabular'            " Tab /=
	Plug 'Raimondi/delimitMate'         " automatially add end braces
	Plug 'terryma/vim-multiple-cursors' " <c-n> to select
	Plug 'tpope/vim-surround'						"	ds\" | cs]) | cs\"<q> \"
	Plug 'machakann/vim-swap'						"	g<, g>, gs
	Plug 'scrooloose/nerdcommenter'			" <leader> ci/cn/cc/ cA {end of line}
	Plug 'junegunn/vim-easy-align'  
	Plug 'richsoni/vim-ecliptic'				" c-prefix :y/d/p using global clipboard
	" Plug 'jiangmiao/auto-pairs'	
	" Plug 'tpope/vim-commentary' #removed in favor of nerdcommenter

	" syntax
	" -------------------
	Plug 'elzr/vim-json'
	Plug 'justinmk/vim-syntax-extra'
	Plug 'jelera/vim-javascript-syntax'
	Plug 'pangloss/vim-javascript'
	Plug 'tpope/vim-rails'
	Plug 'bilalq/ruby-matchit'
	Plug 'nelstrom/vim-markdown-folding',  { 'for': 'markdown' }
	Plug 'suan/vim-instant-markdown'
	Plug 'dbakker/vim-lint',               { 'for': 'vim' }
	Plug 'dbakker/vim-sparkup',            { 'for': 'html' }
	Plug 'nelstrom/vim-markdown-folding',  { 'for': 'markdown' }
	Plug 'shawncplus/phpcomplete.vim',     { 'for': 'php' }
	Plug 'tpope/vim-bundler'
	Plug 'tpope/vim-jdaddy',               { 'for': 'json' }
	Plug 'tpope/vim-rake'
	Plug 'tpope/vim-rbenv'
 	Plug 'bilalq/ruby-matchit'
 	" one to rule them all 
 	Plug 'sheerun/vim-polyglot'
 	Plug 'leafo/moonscript-vim'
	" jekyll
	Plug 'noahfrederick/vim-jekyll'
	Plug 'tpope/vim-dispatch'
	Plug 'tpope/vim-projectionist'
	Plug 'tpope/vim-liquid'
	" clojure biz
	Plug 'guns/vim-clojure-static',		{ 'for'	: 'clojure'}
	Plug 'guns/vim-clojure-highlight',	{	'for'	:	'clojure'}


	" linters
	" -------------------
	Plug 'marijnh/tern_for_vim'
	Plug 'scrooloose/syntastic'
	Plug 'artur-shaik/vim-javacomplete2'

	"colors
	" -------------------
	" convert gvim to vim colors
	Plug 'mbbill/desertEx'
	Plug 'zeis/vim-kolor'
	Plug 'w0ng/vim-hybrid'
	Plug 'GGalizzi/cake-vim'
	Plug 'ap/vim-css-color'
	Plug 'Konstruktionist/vim'
	Plug 'cocopon/iceberg.vim'
	Plug 'morhetz/gruvbox'
	Plug 'vim-scripts/CSApprox'
	Plug 'chriskempson/base16-vim'
	Plug 'altercation/vim-colors-solarized'
	Plug 'chriskempson/vim-tomorrow-theme'

	" Add plugins to &runtimepath
	call plug#end()

	let g:syntastic_java_javac_classpath = "/home/cliff/sdk/platforms/android-23/*.jar"

	" ---------------------------------------------
	" Basic mappings
	" ---------------------------------------------
	" call pathogen#infect()							" init pathogen
	nmap <F8> :TagbarToggle<CR>

	nnoremap Q <nop>										" removed Ex mode

	" reduce git gutter update time
	set updatetime=250

	" use ctr+space instead of ctr+x and ctrl+o for omnicomplete
	inoremap <C-Space> <C-x><C-o>
	inoremap <C-@> <C-Space>
	
	" use kj to leave insert mode 
	inoremap kj <esc>

	" let vim reload on saving .vimrc 
	augroup reload_vimrc " {
		autocmd!
				autocmd bufwritepost $myvimrc source $myvimrc
			augroup end " }

	" run current ruby script 
	map <leader>r :!ruby %<cr>
	
	" Autocomplete with dictionary words when spell check is on
	set complete+=kspell

	" map spell checker to F5 in insert mode
	imap <F5> <C-o>:setlocal spell! spelllang=en_us<CR>

	" toggle showing invisible chars with <leader> q
	nmap <leader>L :set list!<CR>

	" reload .vimrc
	nnoremap <Leader>9 :source ~/.vimrc<CR>

	" highlight changed lines with with gl/gj/gk
	nmap <silent> gl :GitGutterLineHighlightsToggle<CR>
	nmap gj <Plug>GitGutterNextHunk
	nmap gk <Plug>GitGutterPrevHunk

	" change default ultisnips trigger
	let g:UltiSnipsExpandTrigger="<leader><leader>"

	" use mru to open old files
	nmap <leader>o :Mru<CR>

	" toogle nerd tree
	nmap <F5> :NERDTreeToggle<CR>

 	" ---------------------------------------------
	"	enabling mouse stuff
	" ---------------------------------------------
	" Send more characters for redraws
	set ttyfast

	" Enable mouse use in all modes
	set mouse=a

	" Set this to the name of your terminal that supports mouse codes.
	" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
	" guard neovim from this
	if !has('nvim')
		set ttymouse=xterm2
	endif

 	" ---------------------------------------------
	"	dispatch 
	" ---------------------------------------------
	autocmd FileType java let b:dispatch = 'javac %'
	nnoremap <F9> :Dispatch<CR>

	" ---------------------------------------------
	" Themes and colors 
	" ---------------------------------------------
	
	if !has('gui_running')
		set t_Co=256
	endif

	if &term =~ '256color'
		 "disable Background Color Erase (BCE) so that color schemes
		 "render properly when inside 256-color tmux and GNU screen.
		 "see also http://snk.tuxfamily.org/log/vim-256color-bce.html
		set t_ut=
	endif

	let base16colorspace=256  " Access colors present in 256 colorspace

	" testing my own theme
	" map <silent> <leader>2 :colo Tomorrow-Moon<CR>

	" set color and background
	set background=dark 
	colo Tomorrow-Night

	" in case am using gruvbox
	let g:gruvbox_contrast_light="hard"
	let g:gruvbox_contrast_dark="medium"

	let g:lightline = {
				\ 'colorscheme': 'PaperColor_light',
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
	" save as
	nnoremap <C-S-s> :saveas<space>

	" update contents <leader>q 
	nmap <leader>Q :e! <CR>

	" ---------------------------------------------
	" Easy motion settings
	" ---------------------------------------------

	let g:EasyMotion_startofline = 0					" keep cursor column when JK motion
	map <Leader>gE <Plug>(easymotion-prefix)

	"easy-motion replace default find
	"map  / <Plug>(easymotion-sn)
	"omap / <Plug>(easymotion-tn)

	" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
	" Without these mappings, `n` & `N` works fine. (These mappings just provide
	" different highlight method and have some other features )
	"map  n <Plug>(easymotion-next)
	"map  N <Plug>(easymotion-prev)

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
	set colorcolumn=0
	let s:color_column_old = 90

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
	
	" ---------------------------------------------
	" Automatic commands
	" ---------------------------------------------

	if has("autocmd")
		" enable file type detection
		filetype on
		" treat .json file as .js
		autocmd bufnewfile,bufread *.json setfiletype json syntax=javascript
		" turn on spell checker for markdown
		autocmd BufRead,BufNewFile *.md setlocal spell
		" activate javacomplete2
		autocmd FileType java setlocal omnifunc=javacomplete#Complete
		" read scss as css
		autocmd BufNewFile,BufRead *.scss		set ft=scss.css
		" read php as html
		autocmd BufNewFile,BufRead *.php		set ft=php.html
		" read scss as css
		autocmd BufNewFile,BufRead *.gradle		set ft=gradle.css
	endif

	" ---------------------------------------------
	" vim bookmarks
	" ---------------------------------------------
	" map <Leader><leader> <Plug>BookmarkToggle
	" map <leader>i <plug>bookmarkannotate
	" nmap <leader>a <plug>bookmarkshowall
	" nmap <Leader>j <Plug>BookmarkNext
	" nmap <Leader>k <Plug>BookmarkPrev
	" nmap <Leader>c <Plug>BookmarkClear
	" nmap <Leader>x <Plug>BookmarkClearAll
	" nmap <Leader>kk <Plug>BookmarkMoveUp
	" nmap <Leader>jj <Plug>BookmarkMoveDown
	
	" ---------------------------------------------
	" ctrlsf.vim
	" ---------------------------------------------
	nmap     <C-F>f <Plug>CtrlSFPrompt
	vmap     <C-F>f <Plug>CtrlSFVwordPath
	vmap     <C-F>F <Plug>CtrlSFVwordExec
	nmap     <C-F>n <Plug>CtrlSFCwordPath
	nmap     <C-F>p <Plug>CtrlSFPwordPath
	nnoremap <C-F>o :CtrlSFOpen<CR>
	nnoremap <C-F>t :CtrlSFToggle<CR>
	inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

	" ---------------------------------------------
	" Force a file type
	" ---------------------------------------------
	nnoremap _cs :set filetype=css<CR>
	nnoremap _er :set filetype=eruby<CR>
	nnoremap _ht :set filetype=html<CR>
	nnoremap _js :set filetype=javascript<CR>
	nnoremap _md :set filetype=markdown<CR>
	nnoremap _ph :set filetype=php<CR>
	nnoremap _py :set filetype=python<CR>
	nnoremap _rb :set filetype=ruby<CR>
	nnoremap _sh :set filetype=sh<CR>
	nnoremap _tx :set filetype=text<CR>
	nnoremap _vi :set filetype=vim<CR>
	nnoremap _xm :set filetype=xml<CR>

	" ---------------------------------------------
	" omnicomplete
	" ---------------------------------------------
	inoremap <expr> <C-s> pumvisible() ? "\<C-Y>" : "\<s>"
