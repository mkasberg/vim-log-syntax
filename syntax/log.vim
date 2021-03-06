" Vim syntax file
" Language:         Generic log files
" Maintainer:       Alex Dzyoba <avd@reduct.ru>
" Latest Revision:  2013-03-08
" Changes:          2013-03-08 Initial version

" Based on messages.vim - syntax file for highlighting kernel messages

if exists("b:current_syntax")
  finish
endif

syn keyword log_info	INFO DEBUG
syn keyword log_warn	WARN WARNING
syn keyword log_error	FATAL ERROR ERRORS FAIL FAILED FAILURE
syn region log_id	start=/\[/ end=/\]/ end=/$/ skip=/\\./
syn region log_string	start=/'/ end=/'/ end=/$/ skip=/\\./
syn region log_string	start=/"/ end=/"/ end=/$/ skip=/\\./

syn match log_date	'\d\{4}-\d\d-\d\d'
syn match log_date	'\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'

syn match log_time	'\d\d:\d\d:\d\d\s*'
syn match log_time	'\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'

hi def link log_string	String
hi def link log_id	Identifier
hi def link log_date	Keyword
hi def link log_time	Keyword
hi def link log_error	ErrorMsg
hi def link log_warn	Todo
hi def link log_info	StatusLineNC


let b:current_syntax = "log"
