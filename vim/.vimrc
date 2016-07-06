" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"=====================
"   General Config
"=====================

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
"colors and fonts  
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

"=============================================
"Vundle 配置
"=============================================
set nocompatible                " required
filetype off                    " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 Bundle 'gmarik/vundle'

 " my Bundle here:
 "
 " original repos on github
 Bundle 'kien/ctrlp.vim'
 Bundle 'sukima/xmledit'
 Bundle 'sjl/gundo.vim'
 Bundle 'jiangmiao/auto-pairs'
 Bundle 'klen/python-mode'
 Bundle 'Valloric/ListToggle'
 Bundle 'SirVer/ultisnips'
 Bundle 'scrooloose/syntastic'
 Bundle 't9md/vim-quickhl'

 "Plugin
 " Bundle 'The-NERD-tree'
 Bundle 'The-NERD-Commenter'
 Bundle 'Xuyuanp/nerdtree-git-plugin'
 Bundle 'css_color.vim'
 
 "Syntax
 Bundle 'html5.vim'
 Bundle 'xml.vim'
 Bundle 'mako.vim'
 Bundle 'python.vim--Vasiliev'

 Bundle 'scrooloose/nerdcommenter'

 "..................................
 " vim-scripts repos
 Bundle 'YankRing.vim'
 Bundle 'vcscommand.vim'
 Bundle 'ShowPairs'
 Bundle 'SudoEdit.vim'
 Bundle 'EasyGrep'
 Bundle 'VOoM'
 Bundle 'VimIM'

 "..................................
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 "......................................
 filetype plugin indent on



