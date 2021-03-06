noremap <leader>w :write<cr>
noremap <leader>W :SudoWrite<cr>
noremap <leader>s :saveas 
noremap <leader>S :wqa<cr>
noremap <leader>q :quitall<cr>
noremap <leader>Q :quitall!<cr>
noremap <leader>e :edit 
noremap <leader>E :tabedit 
" https://vi.stackexchange.com/questions/2076/whats-the-difference-between-let-and-set
let $vimrc='/etc/vimrc'
noremap <leader>r :source %<cr>
noremap <leader>R :source $vimrc<cr>
noremap <leader>c :edit $vimrc<cr>
noremap <leader>C :tabedit $vimrc<cr>
noremap <leader>nh :nohl<cr>

" http://www.softpanorama.org/Editors/Vimorama/vim_running_external_commands.shtml
noremap <leader>p :r !tmux paste-buffer<cr>

noremap <leader>bn :bnext!<cr>
noremap <leader>bp :bprev!<cr>
noremap <leader>bb :buffers<cr>
map <leader>B <leader>bb
noremap <leader>bd :bdel!<cr>
noremap <leader>ba :bad 
noremap <leader>be :bedit 
noremap <leader># :edit #
nnoremap <leader>bf :bfirst<cr>
map <leader>b0 <leader>bf
nnoremap <leader>bl :blast<cr>
map <leader>b$ <leader>bl

map <leader>u ggVGu
map <leader>U ggVGU
" :%s/.*/\L&/g

noremap <leader>mm :marks<cr>
map <leader>M <leader>mm
noremap <leader>md :delmarks 
noremap <leader>mD :delmarks!<bar>SignatureRefresh<cr>
" <bar> is | to chain commands in Ex mode when mapping
" more on it: http://vim.wikia.com/wiki/Multiple_commands_at_once

noremap <leader>a ggVG " select all

" move in wraps
noremap j gj
noremap k gk
