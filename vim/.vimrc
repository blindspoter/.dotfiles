source ~/.vim/bundles.vim

set nocompatible
set backspace=indent,eol,start
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ==========================================
"               General Config
" ==========================================

"检测文件类型
filetype on
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
"启动自动补全
filetype plugin indent on
"括号配对情况
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

"==========================================
"              Colors and fonts
"==========================================
"开启语法高亮
syntax enable
syntax on

"配色方案 三种,选一个
"colorscheme darkblue "深蓝色配色方案。
"colorscheme desert "经典配色方案。
set background=dark
"同sublime text2
"colorscheme molokai
set t_Co=256
