"Basic settings
filetype plugin indent on
syntax on

set guicursor=
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=2
set autoindent
set formatoptions=c,q,r,t
set ruler
set wrapscan
set mouse=a
set hidden
set laststatus=2
set encoding=utf-8
set termencoding=utf-8
set noequalalways
set timeoutlen=1000 ttimeoutlen=0
set noshowmode
set ffs=unix,dos,mac
set foldmethod=syntax
set foldlevel=99
set termguicolors
set shortmess+=c
"set omnifunc=syntaxcomplete#Complete
set cursorline
"set autochdir
"set winminheight=20

"What were these for?
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"Set buffer autocmds
autocmd BufWinEnter,WinEnter term://* startinsert 
autocmd BufWinEnter,WinEnter term://* :set cursorline 
autocmd BufWinEnter,WinEnter term://* :set nonumber 
autocmd BufLeave term://* stopinsert
autocmd BufLeave term://* :set nocursorline
"autocmd BufLeave term://* :set number
autocmd BufEnter,WinEnter * silent! :lcd%:p:h
autocmd TermOpen * :resize 18
autocmd TermOpen * :set nonumber
autocmd OptionSet guicursor noautocmd set guicursor=

"Navigate buffers
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

tnoremap <C-J> <C-\><C-n><C-W>j
tnoremap <C-K> <C-\><C-n><C-W>k
tnoremap <C-H> <C-\><C-n><C-W>h
tnoremap <C-L> <C-\><C-n><C-W>l
tnoremap <Esc> <C-\><C-n>

"map leader to ,
let mapleader= ","
let maplocalleader = ","

"function! BuildYCM(info)
  "" info is a dictionary with 3 fields
  "" - name:   name of the plugin
  "" - status: 'installed', 'updated', or 'unchanged'
  "" - force:  set on PlugInstall! or PlugUpdate!
  "if a:info.status == 'installed' || a:info.force
    "!python2 ./install.py --all
  "endif
"endfunction

let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

let g:plug_timeout = 240
call plug#begin('$HOME/.nvim/plugged')

"Miscellaneous
Plug 'vim-airline/vim-airline' "status bar
Plug 'vim-airline/vim-airline-themes' "status bar
Plug 'edkolev/tmuxline.vim' "tmux theme
Plug 'chrisbra/csv.vim' "display CSV
Plug 'sjl/gundo.vim' "undo history
Plug 'ervandew/supertab' "multiple functions for tab key
Plug 'tpope/vim-repeat' "repeat complex actions (make sure it works)
Plug 'christoomey/vim-tmux-navigator' "tmux shortcuts
Plug 'tpope/vim-unimpaired' "miscellaneous paired mappings
Plug 'tpope/vim-abolish' "act on word variants
Plug 'christoomey/vim-system-copy' "use system clipboard
Plug 'zhaocai/goldenview.vim' "split buffers
"Plug 'nhooyr/neoman.vim' "use neovim to read man pages

"Plug 'vim-scripts/a.vim'
"Plug 'vim-jp/vital.vim'
"Plug 'vim-scripts/sudo.vim' "save as sudo - probably remove
"Plug 'mrtazz/DoxygenToolkit.vim'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'} "still needed?
"Plug 'vim-scripts/TaskList.vim'

"Colorschemes
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'lifepillar/vim-solarized8'
"Plug 'nightsense/seabird'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'joshdick/onedark.vim'
"Plug 'fneu/breezy'
"Plug 'dracula/vim'
Plug 'chriskempson/base16-vim'
"Plug 'morhetz/gruvbox'
"Plug 'nanotech/jellybeans.vim'
"Plug 'dikiaap/minimalist'
"Plug 'arcticicestudio/nord-vim'
"Plug 'tomasr/dracula'
"Plug 'rakr/vim-one'
"Plug 'vim-scripts/Color-Sampler-Pack'
"Plug 'thinca/vim-guicolorscheme'

"Comments
Plug 'scrooloose/nerdcommenter' "shortcuts to comment out
Plug 'tpope/vim-commentary'

"Completion
Plug 'wellle/tmux-complete.vim'
Plug 'Shougo/neoinclude.vim' "completion engine
Plug 'Shougo/neco-syntax' "vimscript completion
Plug 'Shougo/neco-vim' "vimscript completion

"Plug 'davidhalter/jedi-vim' "python completion

"asyncomplete
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-buffer.vim'
"Plug 'prabirshrestha/asyncomplete-file.vim'
"Plug 'prabirshrestha/asyncomplete-necovim.vim'
"Plug 'prabirshrestha/asyncomplete-necosyntax.vim'
"Plug 'yami-beta/asyncomplete-omni.vim'

"Plug 'codota/tabnine'
"Plug 'kitagry/asyncomplete-tabnine.vim', { 'do': './install.sh' }

"Coc
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc-neco'

"YouCompleteMe
"Plug 'ycm-core/YouCompleteMe'
"let ycm_semantic_triggers = { 'r' : ['re!..', '::', '$', '@', '(', ','] }

"ncm2
Plug 'ncm2/ncm2' "completion engine
Plug 'roxma/nvim-yarp'

autocmd BufEnter * call ncm2#enable_for_buffer()

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-tagprefix'
Plug 'filipekiss/ncm2-look.vim'
Plug 'jsfaint/gen_tags.vim'
Plug 'ncm2/ncm2-syntax'
Plug 'ncm2/ncm2-neoinclude'
Plug 'ncm2/ncm2-ultisnips'
"Plug 'ncm2/ncm2-match-highlight'
"Plug 'ncm2/ncm2-highprio-pop'

Plug 'ncm2/ncm2-vim'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-go'
Plug 'liubianshi/ncm-R' "r completion

"LanguageServer
"Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
"\ }

"Plug 'MaskRay/ccls' "C/C++
"Plug 'Pure-D/serve-d' "D
"Plug 'sourcegraph/go-langserver' "Go
"Plug 'rust-lang-nursery/rls' "Rust
"Plug 'hansec/fortran-language-server' "Fortran

"Plug 'REditorSupport/languageserver' "R
"Plug 'JuliaEditorSupport/LanguageServer.jl' "Julia

"Plug 'mads-hartmann/bash-language-server' "bash
"Plug 'Alloyed/lua-lsp' "Lua
"Plug 'palantir/python-language-server', {'branch': 'develop'} "Python
"Plug 'castwide/solargraph' "Ruby

"Plug 'CXuesong/LanguageServer.NET' "C#
"Plug 'eclipse/eclipse.jdt.ls' "Java
"Plug 'snoe/clojure-lsp' "Clojure
"Plug 'palantir/groovy-language-server', {'branch': 'develop'} "Groovy
"Plug 'dragos/dragos-vscode-scala'

"Plug 'Microsoft/vscode/tree/master/extensions/json' "JSON
"Plug 'microclimate-devops/xml-language-server' "XML
"Plug 'redhat-developer/yaml-language-server' "YAML

"Plug 'haskell/haskell-ide-engine' "Haskell
"Plug 'freebroccolo/ocaml-language-server' "Ocaml

"Plug 'vshaxe/haxe-languageserver' "Haxe
"Plug 'rlovelett/langserver-swift' "Swift

"Plug 'georgewfraser/kotlin-language-server' "Kotlin
"Plug 'scalameta/metals'

"Plug 'natebosch/dart_language_server' "Dart
"Plug 'sourcegraph/javascript-typescript-langserver' "Javascript
"Plug 'nwolverson/purescript-language-server' "Purescript

"Plug 'eclipse/xtext-core'

"let g:LanguageClient_serverCommands = {
    "\ 'r': ['R', '--quiet', '--slave', '-e', 'languageserver::run()'],
    "\ 'sh': ['bash-language-server', 'start']
    "\ }

"File Management
Plug 'scrooloose/nerdtree' "Open other files
Plug 'jistr/vim-nerdtree-tabs' "Keep nerdtree open in all tabs
Plug 'mhinz/vim-startify' "vim start screen!
Plug 'justinmk/vim-dirvish' "remote file editing
Plug 'amiorin/vim-project' "huh?
Plug 'tpope/vim-eunuch' "POSIX file commands
Plug 'Shougo/vimfiler.vim' "still requires Unite!
"Plug 'eiginn/netrw' "remote edit
"Plug 'airblade/vim-rooter' "set root dir correctly

"Haskell
"Plug 'dag/vim2hs'
"Plug 'lukerandall/haskellmode-vim'
"Plug 'adinapoli/cumino'
"Plug 'bitc/vim-hdevtools'
"Plug 'eagletmt/ghcmod-vim'
"Plug 'Twinside/vim-haskellFold'
"Plug 'travitch/hasksyn'
"Plug 'eagletmt/neco-ghc'
"Plug 'enomsg/vim-HaskellConcealPlus'

"Indent - set up correctly
Plug 'michaeljsmith/vim-indent-object'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular' "align to specific characters
Plug 'tommcdo/vim-lion'

"Kana
Plug 'kana/vim-smartchr' "replace characters
Plug 'kana/vim-smartinput' "better version of auto-pair
Plug 'kana/vim-niceblock' "better visual block mode
Plug 'kana/vim-fakeclip' "better clipboard
Plug 'kana/vim-submode' "create submodes
Plug 'kana/vim-altercmd' "alter existing command
Plug 'kana/vim-narrow'
Plug 'kana/vim-advice' "alter commands?

"LaTeX
Plug 'lervag/vimtex' "LaTeX continuous compile

"Markdown
Plug 'suan/vim-instant-markdown' "Markdown contiuous compile

"Movement
Plug 'easymotion/vim-easymotion' "use letters to jump to words
Plug 'terryma/vim-multiple-cursors' "sublime text multiple cursor
Plug 'kana/vim-smartword' "better word movement
Plug 'kana/vim-better-tag-jump' "tag jump
Plug 'kana/vim-exjumplist' "jumplist motions

"Operators
Plug 'kana/vim-operator-user' "define own operator
Plug 'kana/vim-operator-replace' "replace existing operator
Plug 'kana/vim-operator-siege'

"Python
Plug 'fs111/pydoc.vim' "python documentation?
Plug 'alfredodeza/pytest.vim' "test python code
"python-mode
"Plug 'ivanov/vim-ipython' "python REPL

"REPL
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'} "R plugin
Plug 'jalvesaq/vimcmdline' "Generic REPL
Plug 'Shougo/deol.nvim' "Shell plugin
Plug 'kassio/neoterm' "Term plugin
"Plug 'jpalardy/vim-slime' "probably redundant with above

"Search - all hail FZF
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' } "search with fzf
Plug 'junegunn/fzf.vim' "search commands
Plug 'rking/ag.vim' "keep around
Plug 'Shougo/denite.nvim' "more interfaces when fzf not available
Plug 'Shougo/unite.vim' "replace with dark version - replace with FZF
Plug 'tacahiroy/ctrlp-funky' "navigate to functions - replace with FZF
Plug 'kien/ctrlp.vim' "Launch recently used files - FZF
Plug 'mileszs/ack.vim'
"Plug 'wincent/Command-T'

"Snippets
Plug 'SirVer/ultisnips' "snippets engine - check others
Plug 'honza/vim-snippets' "snippets definition

"Surround
Plug 'tpope/vim-endwise' "add end of conditional statements, loops, etc.
Plug 'tpope/vim-surround' "to add quotes etc. around word
Plug 'wellle/targets.vim' "more text targets (i.e. parentheses)
"Plug 'jiangmiao/auto-pairs' "add parentheses

"Syntax checking
Plug 'scrooloose/syntastic' "check syntax
"Plug 'reinh/vim-makegreen'

"Tabs/buffers - slim down!
Plug 'szw/vim-ctrlspace' "navigate tabs - replace with FZF?
"Plug 'jlanzarotta/bufexplorer'
"Plug 'fholgado/minibufexpl.vim'

"Tags - redundant?
Plug 'majutsushi/tagbar' "show tags in navigable bar
Plug 'vim-scripts/taglist.vim' "show tags in bar - prob. redundant

"Text objects
Plug 'kana/vim-textobj-user' "whole buffer text object
Plug 'kana/vim-textobj-entire' "whole buffer text object
Plug 'kana/vim-textobj-function' "function text object
Plug 'kana/vim-textobj-line' "line text object
Plug 'kana/vim-textobj-help' "help text object
Plug 'kana/vim-textobj-syntax' "syntax text object
Plug 'kana/vim-textobj-lastpat' "lastpattern text object
Plug 'kana/vim-textobj-indent' "indent text object
Plug 'kana/vim-textobj-fold' "fold text object

"VCS
Plug 'tpope/vim-fugitive' "git plugin
"Plug 'vim-scripts/vcscommand.vim' "is this needed?

Plug 'ryanoasis/vim-devicons' "unicode icons everywhere
call plug#end()

"tpope/dispatch - async - needed?
"skywind3000/asyncrun.vim - async

"Ag
map <leader>a <Esc>:FzfAg!

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#coc#enabled = 1
"let g:airline_solarized_bg='dark'
let g:airline_theme='base16'

"Asyncomplete
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
""inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"imap <c-space> <Plug>(asyncomplete_force_refresh)

"let g:asyncomplete_auto_popup = 1

"function! s:check_back_space() abort
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

"inoremap <silent><expr> <TAB>
  "\ pumvisible() ? "\<C-n>" :
  "\ <SID>check_back_space() ? "\<TAB>" :
  "\ asyncomplete#force_refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"" allow modifying the completeopt variable, or it will
"" be overridden all the time
"let g:asyncomplete_auto_completeopt = 0

"set completeopt=menuone,noinsert,noselect,preview

"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"Asyncomplete buffer
"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    "\ 'name': 'buffer',
    "\ 'allowlist': ['*'],
    "\ 'blocklist': ['go'],
    "\ 'completor': function('asyncomplete#sources#buffer#completor'),
    "\ 'config': {
    "\    'max_buffer_size': 5000000,
    "\  },
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    "\ 'name': 'file',
    "\ 'allowlist': ['*'],
    "\ 'priority': 10,
    "\ 'completor': function('asyncomplete#sources#file#completor')
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
    "\ 'name': 'necovim',
    "\ 'allowlist': ['vim'],
    "\ 'completor': function('asyncomplete#sources#necovim#completor'),
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
    "\ 'name': 'necosyntax',
    "\ 'allowlist': ['*'],
    "\ 'completor': function('asyncomplete#sources#necosyntax#completor'),
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tabnine#get_source_options({
    "\ 'name': 'tabnine',
    "\ 'allowlist': ['*'],
    "\ 'completor': function('asyncomplete#sources#tabnine#completor'),
    "\ 'config': {
    "\   'line_limit': 1000,
    "\   'max_num_result': 20,
    "\  },
    "\ }))

"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
    "\ 'name': 'omni',
    "\ 'whitelist': ['*'],
    "\ 'blacklist': ['c', 'cpp', 'html'],
    "\ 'completor': function('asyncomplete#sources#omni#completor'),
    "\ 'config': {
    "\   'show_source_kind': 1 
    "\ }
    "\ }))

"Cmdline
let cmdline_app = {}
let cmdline_app["python"] = "jupyter-console"
"let cmdline_app["python"] = "ipython"
let cmdline_app["ruby"] = "pry"
let cmdline_app["sh"] = "zsh"
let cmdline_follow_colorscheme = 1
let cmdline_outhl = 1
let cmdline_in_buffer = 1

"Coc
"set nobackup
"set nowritebackup
"set cmdheight=2
"set updatetime=300
"set signcolumn=yes

"inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"inoremap <silent><expr> <c-space> coc#refresh()

"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

"nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
  "if (index(['vim','help'], &filetype) >= 0)
    "execute 'h '.expand('<cword>')
  "else
    "call CocActionAsync('doHover')
  "endif
"endfunction

"autocmd CursorHold * silent call CocActionAsync('highlight')

"nmap <leader>rn <Plug>(coc-rename)

"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

"augroup mygroup
  "autocmd!
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  "autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

"nmap <leader>ac  <Plug>(coc-codeaction)
"nmap <leader>qf  <Plug>(coc-fix-current)

"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)

"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

"command! -nargs=0 Format :call CocAction('format')

"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>m

"CSV
let g:csv_autocmd_arrange      = 1
"let g:csv_autocmd_arrange_size = 1024*1024

"Ctrlp
let g:ctrlp_cmd = 'CtrlPMRU'
"let g:ctrlp_map = '<c-w>'
" narrow the list down with a word under cursor
"nnoremap <leader>fu :CtrlPFunky<CR>
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"Fugitive
"Command to automatically commit and push changes
map <leader>vv :Gcommit -a -m "HEAD"<CR> :Gpush -q<CR>

"FZF
noremap <C-P> :FzfHistory<CR>
nnoremap <leader>lu :FzfBLines<CR>
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = {'down' : '~25%'}

"Goldenview
let g:goldenview__enable_default_mapping = 0

"Gundo
map <leader>g :GundoToggle<CR>

"Jedi-vim
let g:jedi#completions_enabled = 0

"Multiple Cursor
"let g:multi_cursor_quit_key='<Shift><Esc>'
function Multiple_cursors_before()
  let g:deoplete#disable_auto_complete = 1
endfunction
function Multiple_cursors_after()
  let g:deoplete#disable_auto_complete = 0
endfunction

"Ncm
au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
au User Ncm2PopupClose set completeopt=menuone
"au TextChangedI * call ncm2#auto_trigger()
inoremap <c-c> <ESC>
"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd BufNewFile,BufRead * inoremap <silent> <buffer> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

"au User Ncm2Plugin call ncm2#register_source({
            "\ 'name' : 'R',
            "\ 'priority': 9, 
            "\ 'subscope_enable': 1,
            "\ 'scope': ['r'],
            "\ 'mark': 'R',
            "\ 'word_pattern': '[\w_\.]+',
            "\ 'complete_length': 3,
            "\ 'complete_pattern': ['$', '::', '"', "'"],
            "\ 'on_complete': ['ncm2#on_complete#delay', 180, 'ncm2#on_complete#omni', 'CompleteR'],
            "\ })
let g:ncm2#match_highlight = 'bold'

"Neoterm
let g:neoterm_repl_python = "ipython"

"Nerd Tree
map <leader>n :NERDTreeToggle<CR>

"Nvim-R
let r_syntax_folding = 1 "Enable folding
let R_nvimpager = "vertical" "Split vertical
let R_help_w = 80 "set help width
let R_assign = 0 "don't autoinsert <-
let Rout_more_colors = 1 "use more colors
let R_esc_term = 0
let R_rconsole_width = 0
let R_hl_term = 0
let R_ls_env_tol = 1500
"let R_app = "radian"
let R_cmd = "R"
let R_path = '$HOME/micromamba/envs/r/bin'
"let R_bracketed_paste = 1
"let R_args = []
"let R_vsplit = 1
"let R_tmux_split = 1
"let R_in_buffer = 1
"let R_notmuxconf = 1
"let R_nvim_wd = 1
"let R_wait = 60000
"let R_tmpdir = "$HOME/tmp"
"let R_compldir = "$HOME/tmp"

"Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
nmap <silent> <LocalLeader>rk :call RAction("levels")<CR>
nmap <silent> <LocalLeader>t :call RAction("tail")<CR>
nmap <silent> <LocalLeader>h :call RAction("head")<CR>
nmap <silent> <LocalLeader>p :call RAction("print")<CR>
nmap <silent> <LocalLeader>d :call RAction("dim")<CR>
nmap <silent> <LocalLeader>s :call RAction("str")<CR>

"Rooter
"let g:rooter_change_directory_for_non_project_files = 'current'

"Supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

"Syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"System copy
let g:system_copy#copy_command='xclip'
let g:system_copy#paste_command='xclip -o'

"Tagbar
nmap <F10> :TagbarOpenAutoClose<CR>
let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

"Tasklist
map <leader>td <Plug>TaskList

"Tmux-navigator
let g:tmux_navigator_no_mappings = 1

"Tmuxline
"if exists('$TMUX')
    "autocmd VimEnter * call tmuxline#set_statusline('airline')
"endif
let g:airline#extensions#tmuxline#enabled = 0

"UltiSnips
"better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsEditSplit="vertical"

" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
"inoremap <silent> <buffer> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"Vimtex
"let g:vimtex_latexmk_options="-xelatex" "Use XeLaTeX to compile for better font support
let g:vimtex_compiler_progname='/usr/bin/nvr' "Use NeoVim remote to allow feedback about errors
let g:vimtex_fold_enabled = 1 "Auto fold (not working!)
let g:vimtex_view_method = "skim"
"let g:vimtex_view_general_viewer = 'open -a Skim %:r.pdf'
"let g:vimtex_view_general_options = ''
"let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'nvim',
    \}
let g:tex_flavor = 'latex'

if filereadable(expand("$HOME/.vimrc_background"))
  let base16colorspace=256
  source $HOME/.vimrc_background
endif

"set background=light
colorscheme base16-one-light 
"Override rOperator link for base16
hi def link rOperator    Statement 
"colorscheme onedark
"colorscheme space-vim-dark
"colorscheme solarized8_high

"Color overrides
"hi Visual ctermfg=0 ctermbg=222
"hi Folded ctermbg=NONE
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
"highlight LineNr ctermbg=NONE
"hi Visual ctermbg=11
"hi Spellbad ctermbg=1 ctermfg=15
"hi Search ctermfg=0 ctermbg=59
