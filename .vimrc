set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set visualbell
set t_vb=
set number
set backspace=2

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'Shougo/unite.vim'
Plug 'rking/ag.vim'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
call plug#end()



" -- solarized config
" -- enable degraded color mode for mac terminal
let g:solarized_termcolors=256
set background=dark
try
  colorscheme solarized
catch
endtry

" -- clean whitespace with :FixWhitespace

" -- see 80th column (disabled for now)
"if (exists('+colorcolumn'))
"  set colorcolumn=80
"  highlight ColorColumn ctermbg=9
"endif

" -- Unite config
let g:unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :vsplit<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset
:nnoremap <space>r <Plug>(unite-restart)

" -- ag config
nnoremap <space>/ :Ag

" -- jsx config
let g:jsx_ext_required = 0

" -- syntastic config
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
