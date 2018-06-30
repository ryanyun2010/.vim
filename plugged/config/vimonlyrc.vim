"vim only{{{
set matchpairs+=<:>
if has('gui_running')
else
"python{{{
"add{{{
function! Add()
python << endOfPython
num =int(vim.current.buffer[:][0])+int(vim.current.buffer[:][1])
print(num);
endOfPython
endfunction
"}}}
"html{{{
function! Html()
python << endOfPython
vim.current.buffer[:]=["<html>","<head>","<title></title>","</head>","<body>","</body>","</html>"]
endOfPython
endfunction
command! Html call Html()
"}}}
"clear{{{
function! Clear()
python << endOfPython
vim.current.buffer[:]=[""]
endOfPython
endfunction
command! Clear call Clear()
"}}}
"}}}
endif
"}}}
