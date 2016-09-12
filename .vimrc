" pathogen
execute pathogen#infect()

" syntastic 
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_eslint_exe = 'eslint'
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
let g:jsx_ext_required = 0

" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

" syntax
syntax on

" colorscheme
" colors zenburn
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
filetype plugin on

" backspace
set backspace=2

set modeline

" basics
set nocompatible
syntax on
set number
set ts=2
set sw=2
set smartindent
set wrap!
set hlsearch
set expandtab
set hidden

" mappings
map      	<C-O>     	:vs<CR><C-W><C-W>:e .<CR>
map		    <C-n>		:set invnumber<CR>
map      	..        	<C-W><C-W><CR>
map      	,,        	<C-W>1<C-W><CR>	
map		    <S-l>		<S-Right>
map		    <S-h>		<S-Left>
map		    <C-p>		:let @/ = ""<CR>

" tab-like buffer navigation
" map         <C-t>       :tabnew<CR>:e .<CR>
" map         <C-t>       :tabnew<CR>:NERDTree<CR>
" map         <C-h>       :tabp<CR>
" map         <C-l>       :tabn<CR>
" let g:NERDTreeQuitOnOpen = 1

" tab-like split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l



"map 11 !eslint --fix %

" tabify
map         tt          gg=G

" wrap selection in /*, */
vmap 	* 			<Esc>`>a*/<CR><Esc>`<i<CR>/*<Esc>
" wrap selection in ( )
vmap 	( 			<Esc>`>a)<Esc>`<i(<Esc>

" indentation functions
function! GnuIndent()
  set cindent
  set cindent shiftwidth=2
  set textwidth=80
  set comments=sl:/*,mb:*,elx:*/
  set cinoptions+={1s,>2s,e2s,n-1s,^-1s
  set expandtab
  set smarttab
  set shiftwidth=2
  set ts=2
  " yell if longer than 80 chars
  highlight OverLength ctermfg=darkred
  match OverLength /\%81v.*/
endfunction

function! MakeFileIndent()
  set noexpandtab
endfunction

" javascript
au BufNewFile,BufRead *.json   	set filetype=javascript

" show cursor position
set ruler
set rulerformat=%50(%c%V\ %p%%%)
