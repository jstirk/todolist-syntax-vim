" Vim syntax file
" Language: TODOList
" Maintainer: Jason Stirk
" Latest Revision: 06 February 2012

if exists("b:current_syntax")
  finish
endif

syn match todolistComment '^// .*$'
syn match todolistHeader '^[A-Z ]\+:'
syn match todolistPoints '(\d)'
syn match todolistTime '(\(\d\+\(:\d\+\)\?[ap]m\)\? \?\([MTWFS][a-z]\+\)\?)'
syn match todolistStory '\[\d\+\]'

syn match todolistAction '\(Call\|Email\)'
syn match todolistProjectCode ' [A-Z]\{3\} '
syn match todolistImportant '\(!!\|(?\+)\)'
syn match todolistDelegate '=> [A-Za-z]\+'

syn match todolistOpen '\t\* .*' skipwhite contains=todolistPoints,todolistTime,todolistStory,todolistImportant,todolistDelegate,todolistProjectCode,todolistAction
syn match todolistClosed '\t- .*' skipwhite

syn region todolistBlock start=/^[A-Z]+:/ end=/^$/ fold transparent contains=todolistWords,todolistOpen,todolistClosed,todolistHeader

let b:current_syntax = "todolist"

hi def link todolistHeader    Structure
hi def link todolistOpen      Normal
hi def link todolistClosed    Comment
hi def link todolistComment   Comment
hi def link todolistTime      String
hi def link todolistStory     Special
hi def link todolistImportant Todo
hi def link todolistPoints    Operator
hi def link todolistDelegate  String
hi def link todolistProjectCode Constant
hi def link todolistAction    Define
