" Vim color file
" Maintainer:	Travis Webb
" Last Change:	Thu Jan 6 EST 2011
" Version:	0.1
" 
set background=dark
hi clear
syntax reset
let g:colors_name="green_darkbg"

hi Normal	cterm=none			gui=none	guibg=#101020	guifg=#a8aaaa
hi Cursor	cterm=none					guibg=#44ff44	guifg=#000000
hi link CursorIM Cursor
hi Directory				ctermfg=green				guifg=#44ffff
hi DiffAdd	ctermbg=blue		ctermfg=yellow		guibg=#080888	guifg=#ffff00
hi DiffDelete	ctermbg=black		ctermfg=darkgrey	guibg=#080808	guifg=#444444
hi DiffChange	ctermbg=black					guibg=#080808	guifg=#ffffff
hi DiffText	ctermbg=black		ctermfg=darkred		guibg=#080808	guifg=#bb0000
hi ErrorMsg	ctermbg=darkred		ctermfg=white		guibg=#880000	guifg=#ffffff
hi Folded		ctermbg=NONE			ctermfg=cyan
hi link FoldColumn Folded
hi IncSearch	ctermbg=black		ctermfg=grey		guibg=#000000	guifg=#bbcccc
hi LineNr				ctermfg=darkyellow		guibg=#404040	guifg=#ffff00
hi ModeMsg				ctermfg=white				guifg=#ffffff
hi MoreMsg				ctermfg=green				guifg=#44ff44
hi NonText				ctermfg=green				guifg=#4444ff
hi Question				ctermfg=yellow				guifg=#ffff00
hi Search	ctermbg=NONE		ctermfg=cyan		guibg=NONE	guifg=green
hi SpecialKey				ctermfg=blue				guifg=#4444ff
hi StatusLine	cterm=none ctermbg=darkgreen	ctermfg=white	gui=none	guibg=#00aaaa	guifg=#ffffff
hi StatusLineNC	cterm=none ctermbg=grey		ctermfg=black	gui=none	guibg=#bbbbbb	guifg=#000000
hi link VertSplit StatusLineNC			
hi Title				ctermfg=white				guifg=#ffffff
hi Visual		cterm=none 	ctermbg=white			ctermfg=black
hi link VisualNOS Visual
hi WarningMsg				ctermfg=yellow				guifg=#ffff00

  " syntax highlighting groups
hi Comment		ctermfg=darkcyan
hi Constant		ctermfg=darkgreen		
hi Identifier 	ctermfg=white			
hi Statement 	ctermfg=green			
hi PreProc		ctermfg=darkgreen		
hi Type			ctermfg=white		
hi Special		ctermfg=darkcyan 		
hi Underlined	ctermfg=blue			
hi Ignore		ctermfg=darkgrey		
hi Error		ctermbg=black			ctermfg=darkred		
hi Todo			ctermbg=blue			ctermfg=grey
hi Number       ctermfg=darkgreen

hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Conditional	Statement
hi link Label		Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Repeat		Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special
hi link FoldColumn	Folded

