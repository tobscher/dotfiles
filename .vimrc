set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-scripts/tlib'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'timcharper/textile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tmhedberg/matchit'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'rking/ag.vim'
Plugin 'derekwyatt/vim-fswitch'

call vundle#end()

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
set encoding=utf-8
set backspace=indent,eol,start "Allow backspacing over tabs end of lines and start of insert
set wildmode=longest,list "Better tab completion of filenames (like bash)
set wildmenu              "as above
set mouse=a
set lazyredraw            " no buffer refresh while running macros
set showcmd
set showmatch
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

"Allows use of %/ for current directory
cmap %/ %:p:h/

set t_Co=256
colorscheme molokai
set background=dark       "Tell vim I'm using a dark background

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=white
let g:ragtag_global_maps = 1

hi CursorLine cterm=none ctermbg=235
hi Search term=reverse ctermfg=88 ctermbg=214

" Configure the silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Custom you complete me options
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"Custom filetypes
au BufNewFile,BufRead *.ctp set filetype=html
au BufNewFile,BufRead *.ui set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead Rakefile set filetype=ruby
au BufNewFile,BufRead Fudgefile set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead config.ru set filetype=ruby
au BufNewFile,BufRead .bash_aliases set filetype=sh
au BufNewFile,BufRead *.vb set filetype=vbnet
"Tabs and traling space highlighting and sorting out - :retab sorts out tabs
set list lcs=tab:·⁖,trail:¶

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

let mapleader = ","
map <leader>, :CtrlP<CR>
map <leader>l :NERDTreeToggle<CR>
nnoremap <leader>a :Ag

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*/tmp/*,*.so,*.zip

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

let g:Powerline_symbols = 'fancy'

augroup mycppfiles
  au!
  au BufEnter *.h let b:fswitchdst  = 'cpp,cc,C'
  au BufEnter *.h let b:fswitchlocs = 'reg:/include/src/,reg:/include.*/src/'
augroup END

augroup myhfiles
  au!
  au BufEnter *.cpp let b:fswitchdst = 'h,hpp'
  au BufEnter *.cpp let b:fswitchlocs = 'reg:|\(src.*\)/\(src\)|\1/include|'
augroup END
