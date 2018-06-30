autocmd BufWritePre *.css  :normal gg=G
let mapleader=";"
set noswapfile
nmap mt f<l%
echo expand("%")
echo ""
set foldmethod=marker
hi folded          guifg=cyan       guibg=black         gui=none
hi normal          guibg=black                          gui=none
set backspace=2
only
  
vsp|find .
autocmd swapexists * let v:swapchoice='e'
set tabstop=2 softtabstop=2 shiftwidth=2
set listchars=tab:▸\ ,eol:¬
execute pathogen#infect()
