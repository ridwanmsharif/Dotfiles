set nocompatible              " be iMproved, required
filetype off                  " required

let g:UltiSnipsExpandTrigger='<c-s>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-s>'

set omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails = 1

" Plugins {{{
" Use vim-plug to manage dependencies, stored to ~/.vim/plugged
call plug#begin('~/.config/nvim/plugged')
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets' "optional
  Plug 'roxma/nvim-completion-manager'
  Plug 'roxma/ncm-rct-complete'
  Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': 'bash install.sh',
     \ }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets' "optional
  Plug 'roxma/nvim-completion-manager'
  Plug 'roxma/ncm-rct-complete'
  Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': 'bash install.sh',
     \ }
  Plug 'w0rp/ale'
  Plug 'tpope/vim-endwise'
  Plug 'jremmen/vim-ripgrep'
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'dag/vim-fish'
  Plug 'easymotion/vim-easymotion'
  Plug 'flazz/vim-colorschemes'
  Plug 'junegunn/vim-easy-align'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'majutsushi/tagbar'
  " Use 'itchyny/lightline.vim' instead
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Konfekt/FastFold'
  Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp', 'proto']}
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  " Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'cespare/vim-toml', { 'for': 'toml' }
	Plug 'w0ng/vim-hybrid'	
call plug#end()
" }}}


" Theme {{{
  syntax on                                 " Syntax highlighting
  set background=dark                       " Dark background
  colorscheme hybrid                     " Other options: pablo
  let g:solarized_termtrans = 1
  let g:solarized_termcolors = 16
  let g:solarized_contrast = "normal"
  let g:solarized_visibility = "normal"
" }}}

" Spacing {{{
  set autoindent                            " Autoindent
  set expandtab                             " Tabs are spaces
  filetype plugin indent on                 " Load filetype-specific indentation
  set tabstop=2 shiftwidth=2 softtabstop=2  " Default tabwidth

  " Language specific tabwidth
  autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" }}}

" Search {{{
  set ignorecase                            " Ignore case of searches
  set incsearch                             " Dynamic highlighting
  set gdefault                              " Default global search flag
  set wrapscan                              " Wrap search around the file
  highlight IncSearch ctermfg=15 cterm=bold,underline term=standout
  highlight Search ctermfg=15 cterm=NONE term=standout ctermbg=NONE
" }}}

" Folding {{{
  set foldenable
  set foldlevelstart=10                     " Opens most folds by default
  set foldnestmax=7                         " 8 nested fold max
  set foldmethod=syntax                     " Folding based on file syntax
" }}}

" Undo/Backup/Swap {{{
  if !isdirectory(expand("~/.vim/undo/"))
    silent !mkdir -p ~/.vim/undo
  endif

  set undodir^=~/.vim/undo/                  " Directory to put undo files
  set undofile
  set nobackup                               " No backup files
  set nowritebackup                          " No backup files while editing
  set noswapfile                             " No swap files
" }}}

" Auto-complete {{{
  set wildmenu                                     " Command-line completion
  set wildmode=list:full
  set wildignore+=.hg,.git,.svn                    " Version control
  set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " Binary images
  set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " Compiled object files
  set wildignore+=*.spl                            " Compiled spelling lists
  set wildignore+=*.sw?                            " Vim swap files
  set wildignore+=*.DS_Store                       " OSX bullshit
  set wildignore+=*.orig                           " Merge resolution files
" }}}

" Miscellaneous {{{
  set lazyredraw                            " Faster rendering command options
  set ttyfast                               " Faster terminal connections
  set noeol                                 " Don’t add empty line at EOF
  set showcmd                               " Show partial command while typing
  set ruler                                 " Show line/column number of cursor
  set shortmess=atIfilmnrxoOtT              " Skip intro message when starting
  set spell                                 " Spell checking on
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
  set shell=/usr/local/bin/fish
  autocmd VimResized * wincmd =

  set clipboard=unnamed                     " Use OS clipboard
  scriptencoding utf-8                      " Default to UTF-8 encoding
  highlight LineNr cterm=NONE ctermbg=NONE
  highlight MatchParen cterm=bold ctermbg=NONE ctermfg=15 term=standout
  highlight clear SignColumn      " SignColumn should match background
  highlight Comment cterm=italic
  highlight clear CursorLine
  highlight VertSplit cterm=NONE ctermbg=NONE
  highlight CursorLineNR cterm=bold ctermfg=226
  " Instead of reverting the cursor to the last position in the buffer, we
  " set it to the first line when editing a git commit message
  au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
  " Use an upright bar cursor in Insert mode, a block in normal
  if exists('$TMUX')
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  endif

  " Never do this again :set paste <ctrl-v> :set no paste
  let &t_SI .= "\<Esc>[?2004h"
  let &t_EI .= "\<Esc>[?2004l"

  " Close NERDTree when the last file closes
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
          \ b:NERDTree.isTabTree()) | q | endif
  " }}}

" Plugins {{{
  " Vim-JSON {{{
    let g:vim_json_syntax_conceal = 0
  " }}}

  " Airline {{{
    set t_Co=256
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_theme = 'lucius'         " Lucius, Base16, or Solarized
    set laststatus=2                       " To show status bar on startup
  " }}}

  " EasyMotion {{{
    " <Leader>w Move to word
    map  <Leader>w <Plug>(easymotion-bd-w)
    nmap <Leader>w <Plug>(easymotion-overwin-w)
  " }}}

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

  " }}}

  " FastFold {{{
    let g:fastfold_savehook = 0
    let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
    let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
    let g:vimsyn_folding = 'af'
    let g:tex_fold_enabled = 1
  " }}}
" }}}

" Language {{{
  " {{{ C/C++
    let g:clang_format#code_style = 'google'
    autocmd FileType c,cpp ClangFormatAutoEnable   " Toggle auto formatting
  " }}}

  " {{{ Ruby
    let g:tags_ripper = 0
    autocmd FileType ruby let g:tags_ripper = 1
  " }}}
" }}}

" Mappings {{{
" Quicker exit from insert mode
  imap jk <Esc>l

" Allow using the repeat operator with a visual selection (!)
  vnoremap . :normal .<CR>

" Auto indent pasted text
  nnoremap p p=`]<C-o>
  nnoremap P P=`]<C-o>

" For when you forget to sudo.. Really Write the file.
  cmap w!! w !sudo tee % >/dev/null

" Move vertically by visual line
  nnoremap j gj
  nnoremap k gk
  nnoremap J gj
  nnoremap K gk

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in
  nnoremap n nzzzv
  nnoremap N Nzzz

" Easier buffer navigation
  nnoremap <Tab> :bnext<CR>
  nnoremap <S-Tab> :bprevious<CR>

" Do not show stupid q: window
  map q: :q

" Change mapleader
  let mapleader = ","

" Space opens/closes folds
  nnoremap <space> za

" Highlight last inserted text
  nnoremap <leader>hi `[v`]

" Edit/load .vimrc bindings
  nnoremap <leader>ev :vsp $MYVIMRC<CR>
  nnoremap <leader>sv :source $MYVIMRC<CR>

  nmap <S-t> :TagbarToggle<CR>

" Open NERDTree with ctrl+N
  map <C-n> :NERDTreeToggle %<CR>

" Open Tagbar with Shift+T
  nmap <S-t> :TagbarToggle<CR>

  " Map Ctrl+V to paste, Ctrl+C to copy, paste shortcut with paste toggle
  imap <C-V> <C-R>*
  vmap <C-C> "+y
  nmap <C-V> "+p

" Shift key fixes
  if has("user_commands")
    command! -bang -nargs=* -complete=file E e<bang> <args>
    command! -bang -nargs=* -complete=file W w<bang> <args>
    command! -bang -nargs=* -complete=file Wq wq<bang> <args>
    command! -bang -nargs=* -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
  endif
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

" Source computer-specific customizations
source ~/.vimrc.custom

" vim:foldmethod=marker:foldlevel=0

