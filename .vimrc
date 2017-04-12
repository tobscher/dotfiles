set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/molokai'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-scripts/tlib'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'timcharper/textile.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tmhedberg/matchit'
Plugin 'vim-scripts/a.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
syntax on
set hlsearch              "Highlight searches
set incsearch             "Incremental search
set ls=2                  "Always show status line in all windows
set autoindent            "Auto indent on new line
set expandtab             "tabs to spaces
set tabstop=2             "Tabs are 2 spaces in width
set shiftwidth=2          "Autodindent to 2 spaces width
set scrolloff=10          "Start scrolling when 10 lines close to the bottom
set ruler                 "Shows current file position
set statusline=%<%f\ %h%m%y%r%=%-14.(%l,%c%V%)\ %P
set cursorline            "Highlight current row
set novisualbell          "Don't shake the screen
set number                "show line numbers
set title                 "Change title of window based on file
set ttyfast               "Smoother display for fast terminals
set hidden                "Don't close buffers when changing files
set wildchar=<Tab>        "Tab expands wildcards
set fileencoding=utf8     "Unicode man
set backspace=indent,eol,start "Allow backspacing over tabs end of lines and start of insert
set wildmode=longest,list "Better tab completion of filenames (like bash)
set wildmenu              "as above
set mouse=a
"Allows use of %/ for current directory
cmap %/ %:p:h/

syntax on                 "syntax highlighting
set t_Co=256
colorscheme molokai
" set background=dark       "Tell vim I'm using a dark background

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=white

hi CursorLine cterm=none ctermbg=235
hi Search term=reverse ctermfg=88 ctermbg=214

filetype plugin indent on "Detect filetype indentations

"Custom filetypes
au BufNewFile,BufRead *.ctp set filetype=html
au BufNewFile,BufRead *.ui set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead Fudgefile set filetype=ruby
au BufNewFile,BufRead Rakefile set filetype=ruby
au BufNewFile,BufRead *.hjs set filetype=handlebars
au BufNewFile,BufRead *.ru set filetype=ruby
"Tabs and traling space highlighting and sorting out - :retab sorts out tabs
set list lcs=tab:·⁖,trail:¶

"Emacs indenting
"map <Tab> ==

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

let mapleader = ","
map <leader>, :CtrlP<CR>
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>s :FufTag<CR>
map <leader>l :NERDTreeToggle<CR>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*/tmp/*
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
set backupcopy=no

" Go commands
let g:go_fmt_command = "goimports"
