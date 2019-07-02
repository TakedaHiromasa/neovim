set clipboard=unnamed "クリップボード共有

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

set number	" 行番号を表示する
highlight link EndOfBuffer Ignore " チルダの表示

"------------------------------------------
"TAB
"------------------------------------------
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2

" 行頭でのTab文字の表示幅
set shiftwidth=2


" 新しいタブでターミナルを起動
nnoremap @t :rightb 10sp<CR>:terminal<CR>:set nonumber<CR>i
" Ctrl + q でターミナルを終了
tnoremap <C-q> <C-\><C-n>:q<CR>
" ESCでターミナルモードからノーマルモードへ
tnoremap <ESC> <C-\><C-n>


" Python ===================================
let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'

" dein Scripts =============================
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/hiro/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/hiro/.cache/dein')
  call dein#begin('/home/hiro/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

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


runtime config/window.vim

