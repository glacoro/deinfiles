記述途中

# dein.vimとは
- vimのプラグイン管理ツール
- neobundleはbugfixのみになるため、代わり（というかこっちが本命的な）
- neovimでも使えるらしい（使ったことはない）

# インストール方法
基本は開発者のとこに記載あり

 1. ダウンロード、インストール

```
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh <インストール先>
 ```
 1. .vimrcへの記述

 手順1で記載したインストールを実行すると画面上に下記のようなメッセージが出て来る。(自分用に一部カスタマイズ)   
 最終行手前の ``` if call dein#check_install() 〜 endif ``` あたりはコメントを解除すること

```
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/deinfiles//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/deinfiles/')
  call dein#begin('~/.vim/deinfiles/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/deinfiles//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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
```

# .vimrcの設定方法
プラグインインストールのための記述についてまとめます

- プラグインの追加方法
 1. .vimrcへの記述  
``` call dein#add('<インストールしたいプラグイン>') ```
 1. vim上でコマンドを叩く  
 ``` call dein#install() ```  
以上でインストールしたいプラグインがインストールされる

-
