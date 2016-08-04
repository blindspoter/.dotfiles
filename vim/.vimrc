source ~/.vim/bundles.vim

" ==========================================
"            General Config
" ==========================================
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 " encoding dectection"
set nocompatible           " 不要兼容vi
set history=50             " keep 50 lines of command line history
set noswapfile             " 禁止生成临时文件
set nobackup
set showcmd                " display incomplete commands
set incsearch              " do incremental searching
set hlsearch               " 搜索逐字符高亮
set ignorecase             " 搜索忽略大小写
set smartcase              " 设置大小写敏感和聪明感知(小写全搜，大写完全匹配)

filetype on                " 检测文件类型
filetype indent on         " 针对不同的文件类型采用不同的缩进格式
filetype plugin on         " 允许插件
filetype plugin indent on  " 启动自动补全

set mat=2                  " How many tenths of a second to blink when matching brackets
syntax enable              " 开启语法高亮
syntax on

"==========================================
"            Colors and fonts
"==========================================
set background=dark
let base16colorspace=256   " Access colors present in 256 colorspace"
"colorscheme darkblue      " 深蓝色配色方案。
"colorscheme desert        " 经典配色方案。
"colorscheme monokai
"colorscheme solarized

"==========================================
"            Display settings
"==========================================
set colorcolumn=85           " 彩色显示第85行
set t_Co=256                 " 设置256色显示
set mouse=a                  " use mouse in all modes
set cursorline               " highlight current line"
set cursorcolumn             " 光标垂直高亮
set ruler                    " 打开状态栏标尺
set report=0                 " always report number of lines changed
set nowrap                   " dont wrap lines
set scrolloff=2              " 2 lines above/below cursor when scrolling
set number                   " show line numbers
set showcmd                  " show typed command in status bar
set title                    " show file in titlebar
set laststatus=2             " use 2 lines for the status bar
set showmatch                " 高亮显示匹配的括号
set matchtime=2              " show matching bracket for 0.2 seconds
set matchpairs+=<:>          " specially for html
"set relativenumber
set ruler                    " show cursor position in status bar
set showmode                 " show mode in status bar (insert/replace/...)
set guifont=Inconsolata:h12  " GUI界面里的字体，默认有抗锯齿
set isk+=-                   " 将-连接符也设置为单词
set backspace=indent,eol,start

" Default Indentation
set autoindent
set smartindent             " indent when
set numberwidth=4           " 行号栏的宽度
set textwidth=79

" tab setting
set tabstop=4               " tab width
set softtabstop=4           " backspace &
set shiftwidth=4            " indent width
set expandtab               " expand tab to space

"==========================================
"            Filetypes settings
"==========================================
let python_highlight_all = 1

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=0
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def

"==========================================
"              Plugin config
"==========================================
" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" NERDTree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" SuperTab
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_python_checkers = ['flake8']                 " Python
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']   " go


" Vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Git gutter
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"==========================================
"      Keybindings for plugin toggle
"==========================================
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
