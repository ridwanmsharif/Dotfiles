call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/tComment' "Comment easily with gcc
Plug 'tomtom/tcomment_vim' "Comment easily with gcc
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs' "MANY features, but mostly closes ([{' etc
" Plug 'scrooloose/syntastic' "Run linters and display errors etc
Plug 'tpope/vim-surround' "easily surround things...just read docs for info
Plug 'tomtom/tcomment_vim' "Comment easily with gcc
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jelera/vim-javascript-syntax'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'ap/vim-css-color', {'for': 'css'}"
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/matchit.zip' " % also matches HTML tags / words / etc
Plug 'docunext/closetag.vim'
Plug 'scrooloose/nerdtree'
Plug 'klen/python-mode'
Plug 'sheerun/vim-polyglot'
Plug 'FredKSchott/CoVim'
Plug 'danro/rename.vim'
call plug#end()

syntax on
filetype plugin indent on

set number

" Tmux bindings to navigate between panes
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c--> :TmuxNavigatePrevious<cr>

imap jk <Esc>l

set noswapfile
set nowritebackup
set nobackup
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set textwidth=80
set updatetime=100

set clipboard=unnamed

let g:clang_format#code_style = 'google'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let s:cterm_termbg = 237
" autocmd FileType cpp ClangFormatAutoEnable   " Toggle auto formatting
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
autocmd FileType latex,tex,md,markdown setlocal spell 

set lazyredraw                            " Faster rendering command options
set ttyfast                               " Faster terminal connections
set noeol                                 " Don’t add empty line at EOF
set showcmd                               " Show partial command while typing
set ruler                                 " Show line/column number of cursor
set shortmess=atIfilmnrxoOtT              " Skip intro message when starting
set nostartofline                         " Don't reset cursor to line start
set cursorline                            " Highlight current cursor line
set showmode                              " Show current mode
set title                                 " Show filename in titlebar
set showmatch                             " Highlight matching parenthesis
set scrolloff=3                           " Scroll 3 lines before window edge
set number                                " Line number settings
set mouse=a                               " Automatically enable mouse usage
set mousehide                             " Hide the mouse cursor while typing
set hidden                                " Buffer settings
set iskeyword-=.                          " '.' is an end of word designator
set iskeyword-=#                          " '#' is an end of word designator
set iskeyword-=-                          " '-' is an end of word designator
set backspace=indent,eol,start            " Backspace for dummies
set linespace=0                           " No extra spaces between rows
set autowrite                             " Automatically save before :next
set autoread                              " Automatically reread changed files
set diffopt+=vertical                     " Vertical diff splits
set nowrap                                " Do not wrap long lines
set splitright                            " New vsplit windows to the right
set splitbelow                            " New split windows to the bottom
set comments=sl:/*,mb:*,elx:*/            " auto format comment blocks
set modelines=1                           " Last line reserved for vim actions
set linebreak                             " Wrap lines at convenient points

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

set clipboard=unnamed                     " Use OS clipboard
scriptencoding utf-8                      " Default to UTF-8 encoding
" highlight LineNr cterm=NONE ctermbg=NONE
highlight MatchParen cterm=bold ctermbg=NONE ctermfg=15 term=standout
highlight clear SignColumn      " SignColumn should match background
highlight clear CursorLine
highlight clear LineNr
highlight VertSplit cterm=NONE ctermbg=NONE
highlight CursorLineNR cterm=bold ctermfg=226
" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
" Use an upright bar cursor in Insert mode, a block in normal

" Vim-Go {{{
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_interfaces = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_fmt_command = "goimports"

  au FileType go nmap <leader>gr <Plug>(go-run)
  au FileType go nmap <leader>gb <Plug>(go-build)
  au FileType go nmap <leader>gt <Plug>(go-test)
  au FileType go nmap <leader>gc <Plug>(go-coverage)
  au FileType go nmap <Leader>gds <Plug>(go-def-split)
  au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)
  au FileType go nmap <Leader>gi <Plug>(go-info)
  au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>gs <Plug>(go-implements)

  let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" }}}

" Language {{{
  " {{{ C/C++
    let g:clang_format#code_style = 'google'
    let g:syntastic_cpp_compiler = 'g++'
    let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
    " autocmd FileType cpp ClangFormatAutoEnable   " Toggle auto formatting
  " }}}

  " {{{ Ruby
    let g:tags_ripper = 0
    autocmd FileType ruby let g:tags_ripper = 1
  " }}}
" }}}

" Functions {{{
  " Toggle highlight search (,hs) {{{
    function! ToggleHighlightSearch()
      if(&hlsearch == 1)
        set nohls
      else
        set hls
      endif
    endfunction
    nnoremap <leader>hs :call ToggleHighlightSearch()<CR>
  " }}}

  " Toggle over length highlighting (,ol) {{{
    function! ToggleOverLengthIndicator()
        if g:over_length_hl_enabled
            highlight OverLength ctermbg=NONE ctermfg=NONE cterm=NONE
            let g:over_length_hl_enabled = 0
        else
            highlight OverLength ctermbg=NONE ctermfg=red cterm=bold
            let g:over_length_hl_enabled = 1
        endif
    endfunction
    let g:over_length_hl_enabled = 1
    highlight OverLength ctermbg=NONE ctermfg=NONE cterm=NONE
    match OverLength /\%81v.\+/
    nnoremap <leader>ol :call ToggleOverLengthIndicator()<CR>
  " }}}

  " Toggle fold (, ) {{{
    function! ToggleFold()
      if(&foldlevel == 0)
        set foldlevel=99
      else
        set foldlevel=0
     endif
    endfunc
    noremap <leader><space> :call ToggleFold()<CR>
  " }}}

  " Change to directory of current file, window specific (,lcd) {{{
    function! LocallyChangeCurrentDirectory()
      lcd %:p:h
    endfunction
    nnoremap <leader>lcd :call LocallyChangeCurrentDirectory()<CR>
  " }}}

  " Change to directory of current file (,cd) {{{
    function! ChangeCurrentDirectory()
      cd %:p:h
    endfunction
    nnoremap <leader>cd :call ChangeCurrentDirectory()<CR>
  " }}}

  " Strip trailing white space (,sw) {{{
    function! StripWhiteSpace()
      let save_cursor = getpos(".")
      let old_query = getreg('/')
      :%s/\s\+$//e
      call setpos('.', save_cursor)
      call setreg('/', old_query)
    endfunction
    nnoremap <leader>sw :call StripWhiteSpace()<CR>
  " }}}

  " Generate tags (,rt){{{
    function! RunTags()
      if g:tags_ripper
        execute "!ripper-tags -R --exclude=vendor . `bundle show --paths`"
      else
        execute "!/usr/bin/ctags -R ."
      endif
    endfunction
    nnoremap <leader>rt :call RunTags()<CR>
  " }}}
" }}}
