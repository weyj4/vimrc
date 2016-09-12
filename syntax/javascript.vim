" Vim syntax file
" Language:     JavaScript
" Maintainer:   Yi Zhao (ZHAOYI) <zzlinux AT hotmail DOT com>
" Last Change By: Marc Harter
" Last Change:  February 18, 2011
" Version:      0.7.9
" Changes:      Updates JSDoc syntax
"
" TODO:
"  - Add the HTML syntax inside the JSDoc

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'javascript'
endif

syntax keyword javaScriptType           const undefined var void yield 
