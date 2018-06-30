python import vim
function! Clear()
python << endOfPython
vim.current.buffer[:]=[""]
endOfPython
endfunction
command! Clear call Clear()

