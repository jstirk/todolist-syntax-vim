" Vim syntax file
" Language: Worklist
" Maintainer: Jason Stirk
" Latest Revision: 06 February 2012

if exists("b:current_syntax")
  finish
endif

syn match worklogDate '^[0-9]\{1,2\}[A-Za-z]\{3\}\([0-9]\{4\}\)\?'
syn match worklogTime '[0-9]\{4\}'
syn match worklogProjectCode ' [A-Z]\{3\} '

let b:current_syntax = "worklog"

hi def link worklogDate      Structure
hi def link worklogTime      String
hi def link worklogProjectCode Constant
