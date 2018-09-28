" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Set Colorscheme
set t_Co=16
set background=dark

" map the leader to comma
"let mapleader = "<Space>"
:map <Space> <leader>

" Write file
nnoremap <Leader>w :w<CR>

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Start searching while typing
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Automatically reload files when changed outside vim
set autoread

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Set glyphs to highlight trailing whitespace and tab chars.
set list lcs=trail:·,tab:»·

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Always show at least one line above/below the cursor.
set scrolloff=1

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
" This breaks the default X copy-paste functionality (highlight, middle button)
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=1

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Set indentation (spaces as tabs)
set shiftwidth=2
set softtabstop=2
set expandtab

" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
"nnoremap <C-L> :nohl<CR><C-L>
nnoremap <CR> :nohl<CR><CR>

" Powerline
let g:powerline_pycmd="py3"
"startup

" Always display the tabline, even if there is only one tab
"set showtabline=2

"
" Buffer stuff
"
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
"nmap <leader>n :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
"nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
"nmap <leader>bl :ls<CR>

" Hide the default mode text (e.e. -- INSERT -- below the statusline)
set noshowmode

" gvim options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guicursor=a:blinkon0
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13

 " Plug 'jelera/vim-javascript-syntax'
" load plugins with vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'easymotion/vim-easymotion'
  Plug 'scrooloose/syntastic'
  Plug 'scrooloose/nerdtree'
  Plug 'powerline/powerline'
  Plug 'greyblake/vim-preview'
  Plug 'chriskempson/base16-vim'
  Plug 'djoshea/vim-autoread'
call plug#end()

let base16colorspace=256
"colorscheme base16-default-dark
colorscheme base16-tomorrow-night

if has("gui_running")
  colorscheme base16-default-dark
endif

"
" vim-easymotion
"
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes
" `s{char}{char}{label}`
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"
" syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
" ag
"
let g:ag_prg="/usr/bin/ag --vimgrep"
let g:ag_working_path_mode="r"

"
" NerdTree
"
map <Leader>t :NERDTreeToggle<CR>
" properly close buffer in nerd tree
nnoremap <leader>q :bp<cr>:bd #<cr>
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
