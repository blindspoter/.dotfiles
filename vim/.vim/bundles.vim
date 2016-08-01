set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'


""------------------
"" Dash intergartion
"" -----------------
"
"Bundle 'rizzatti/funcoo.vim'
"Bundle 'rizzatti/dash.vim'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
" Bundle 'honza/snipmate-snippets'
Bundle 'mattn/emmet-vim'
" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
" Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
"Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'OmniCppComplete'
Bundle 't9md/vim-quickhl'

"--------------
" IDE features
"--------------
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
"Bundle 'humiaozuzu/TabBar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'ShowPairs'
Bundle 'VOom'
Bundle 'VimIM'
Bundle 'EasyGrep'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

"-------------
" Other Utils
" ------------
"Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" Web backend
"Bundle 'tpope/vim-rails'
"Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'

"Web front end
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'
Bundle 'xml.vim'
Bundle 'css_color.vim'
Bundle 'tpope/vim-markdown'

" Scheme
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'gosukiwi/vim-atom-dark'
Bundle 'chriskempson/base16-vim'

"--------------
" Python Plugin
" -------------
Bundle 'sophacles/vim-bundle-mako'
Bundle 'klen/python-mode'
Bundle 'python.vim--vasiliev'
Bundle 'mako.vim'

filetype plugin indent on     " required!
