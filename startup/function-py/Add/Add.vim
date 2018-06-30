python import vim
function! Add()
python << endOfPython
num =int(vim.current.buffer[:][0])+int(vim.current.buffer[:][1])
print(num);
endOfPython
endfunction
