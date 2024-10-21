" Custom Vim Color Scheme

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "custom"

" Set the color for various syntax elements
hi Normal       ctermfg=252 ctermbg=234     " grey
hi Comment      ctermfg=39                  " brown
hi Constant     ctermfg=135                 " purple
hi String       ctermfg=213                 " light pink 
hi Identifier   ctermfg=208                 " orange
hi Function     ctermfg=39                  " blue
hi Statement    ctermfg=77                  " green
hi Operator     ctermfg=81                  " light blue
hi PreProc      ctermfg=81
hi Type         ctermfg=81
hi Special      ctermfg=161
hi Error        ctermfg=231 ctermbg=196
hi Todo         ctermfg=231 ctermbg=201
hi LineNr       ctermfg=59 ctermbg=235

" Add more highlight groups as needed
