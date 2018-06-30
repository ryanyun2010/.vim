python import vim
function! Html()
python << endOfPython
vim.current.buffer[:]=["<html>","<head>","<title></title>","</head>","<body>","</body>","</html>"]
endOfPython
endfunction
command! Html call Html()
