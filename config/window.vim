command! HelpWindows :rightb 50vs|view ~/.config/nvim/config/window.vim|set nonumber
" Window Control ======================
nnoremap s? :<C-u>HelpWindows<CR><C-e>

nnoremap s <Nop>

" 窓分割
nnoremap ss :<C-u>sp<CR> " 水平分割
nnoremap sv :<C-u>vs<CR> " 垂直分割

" 窓間移動
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w

" 窓自体の移動
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sr <C-w>r

" タブ関係
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT

" 閉じる
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

" 窓の大きさ
nnoremap s= <C-w>=
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=

nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
