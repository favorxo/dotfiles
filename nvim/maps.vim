" Description: keymaps

nnoremap <S-C-p> "0p
" delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" delete a word backwards
nnoremap dw vb"_d

" select all
nmap <C-a> gg<S-v>G

" search for selected text, forwards or backwards.
vnoremap <silent> * :<c-u>
  \let old_reg=getreg('"')<bar>let old_regtype=getregtype('"')<cr>
  \gvy/<c-r><c-r>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<cr><cr>
  \gv:call setreg('"', old_reg, old_regtype)<cr>
vnoremap <silent> # :<c-u>
  \let old_reg=getreg('"')<bar>let old_regtype=getregtype('"')<cr>
  \gvy?<c-r><c-r>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<cr><cr>
  \gv:call setreg('"', old_reg, old_regtype)<cr>

"-----------------------------

nmap ss :split<return><c-w>w
nmap sv :vsplit<return><c-w>w

