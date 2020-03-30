
" Function: #getFromEquation {{{1
function! mathpix#getFromEquation()
    echom "Select section from screen."
    -1 read ! ~/.vim/plugged/vim-mathpix/bin/mathpix_crop 2>/dev/null
endfunction

" Function: #getFromText {{{1
function! mathpix#getFromText()
    echom "Select section from screen."
<<<<<<< HEAD
=======
    echom "Aca llego bien"
>>>>>>> 57bf1223f41e64678c519261348774557248759e
    -1 read ! ~/.vim/plugged/vim-mathpix/bin/mathpix_crop text 2>/dev/null
endfunction
