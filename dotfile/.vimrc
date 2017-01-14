"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/deinfiles//repos/github.com/Shougo/dein.vim
"set runtimepath+=~/.vim/deinfiles//plugins/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/deinfiles/')
  call dein#begin('~/.vim/deinfiles/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/deinfiles//repos/github.com/Shougo/dein.vim')
"  call dein#add('~/.vim/deinfiles//plugins/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " my plugins 
  " normal plugins
  call dein#add('tomtom/tcomment_vim') 
  call dein#add('tpope/vim-surround')
  call dein#add('joshdick/onedark.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('jistr/vim-nerdtree-tabs')

  " my plugin setting
  " --> NERDTree setting
  let NERDTreeShowHidden = 1
  nmap <Leader><Tab> <C-w>w
  " <-- NERDTree setting
  " --->  onedark
  let g:onedark_termcolors=16
  colorscheme onedark
  " <-- onedark

  " --> vim setting
  set number
  set helplang=ja
  set cursorline
  set laststatus=2
  set statusline=%F\%=\%W[%l/%L]
  " <-- vim setting

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
