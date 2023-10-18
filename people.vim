" Vim syntax file
" Language: PeopleCode
" Maintainer: Fidel Honorato
" Latest Revision: 12 October 2023

if exists("b:current_syntax")
	finish
endif

syntax case ignore


syn keyword pplFunction  Abs AccruableDays AccrualFactor Acos ActiveRowCount AddAttachment AddEmailAddress AddJavaScript AddKeyListItem AddMetaTag AddOnLoadScript AddStyleSheet AddSystemPauseTimes AddToDate AddToDateTime AddToTime All AllOrNone AllowEmplidChg Amortize Asin Atan
"syn keyword pplFunction B
"syn keyword pplFunction C
"syn keyword pplFunction D
"syn keyword pplFunction E
"syn keyword pplFunction F
"syn keyword pplFunction G
"syn keyword pplFunction H
"syn keyword pplFunction I
"syn keyword pplFunction J
"syn keyword pplFunction K
"syn keyword pplFunction L
"syn keyword pplFunction M
"syn keyword pplFunction N
"syn keyword pplFunction O
"syn keyword pplFunction P
"syn keyword pplFunction Q
" TODO Complete S
syn keyword pplFunction ScrolSelect SendMail SetDefault SetDefaultAll SetLabel SetLanguage Sign Sin SortScroll Split SQLExec Sqrt StoreSQL String Substitute Substring 
"syn keyword pplFunction T
"syn keyword pplFunction U
"syn keyword pplFunction V
"syn keyword pplFunction W
"syn keyword pplFunction X
"syn keyword pplFunction Y
"syn keyword pplFunction Z



syn keyword pplScope Local Component Global nextgroup=pplType
syn keyword pplLoops For End-for Do While End-while
syn keyword pplBranch If Else End-if Evaluate End-evaluate Then
syn keyword pplType string any integer boolean float number time 
syn keyword pplObject rowset row record field file
syn keyword pplStatement function 



syn region pplString start="'" end="'"
syn region pplString start=+"+ end=+"+
"syn region pplIf start=+Then+ end=+end\>+ fold transparent

syn match pplVariable "&\k\+"
syn match pplTest "\sP\-A\s"
syn match pplTest "^\%[\s]\+end\-if\>"


syn region pplRegion start="\sthen\s" end="^\%[\s]\+end\-if\>" fold  transparent contains=pplVariable 

"System Variables
"syn match pplSystemVariable '\(%DateTime\> \| %Date\>\)' 
syn match pplSystemVariable '\(%Date \| %DateTime\)' 

syn region pplComment start=+/\*+ end=+\*/+ fold 

let b:current_syntax = "ppl"

hi def link pplLoops		Statement
hi def link pplBranch		Conditional
hi def link pplString		String
hi def link pplType		Type
hi def link pplObject		Type 
hi def link pplVariable		Identifier
hi def link pplStatement	Statement
hi def link pplComment		Comment
hi def link pplFunction		Function
hi def link pplSystemVariable	Special

hi def link pplTest           String