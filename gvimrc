set bg=dark
syn on
hi comment guifg=green
hi Normal guifg=white
set guifont=Consolas:h20
hi Cursor guibg=green
hi String          guifg=yellow                         gui=none
hi Error           guifg=black      guibg=yellow        gui=none
hi VertSplit       guifg=white      guibg=white         gui=none
hi Search          guifg=black      guibg=yellow        gui=none
hi directory       guifg=yellow                         gui=none
hi EndOfBuffer     guifg=#111111    guibg=black         gui=none
hi LineNr          guifg=#ffffff                        gui=none
hi folded          guifg=Cyan       guibg=black         gui=none
hi normal          guibg=#222222    gui=none
hi CursorLine      guifg=none       guibg=#444444       gui=none
cnoremap con find ~/.gvimrc
cnoremap vcon find ~/.vimrc
cnoremap gvcon find ~/.gvimrc
set transparency=8
