" Vim syntax file
" Language: PeopleCode
" Maintainer: Fidel Honorato Schinelli
" Latest Revision: 9/11/2023

if exists("b:current_syntax")
	finish
endif

syntax case ignore

"Keyword definitions, moved for brevity
call pplBuiltinFunctions#setBuiltinFunctions()
call pplSystemVariables#setPplSystemVariables()

syn keyword pplRecordFunction SelectByKey SelectByKeyEffdt contained

"KEYWORDS
syn keyword pplScope Local Component Global 
syn keyword pplType string any integer boolean float number time 
syn keyword pplObject rowset row record field file

"Matches
syn match pplVariable "&\k\+"

syn match pplStatement "^\%[\s]\+function\>" contained
syn match pplStatement "^\%[\s]\+for\s" contained
syn match pplStatement "^\%[\s]\+if\s" contained
syn match pplStatement "^\%[\s]\+else\s" contained
syn match pplStatement "^\%[\s]\+while\s" contained
syn match pplStatement "^\%[\s]\+evaluate\s" contained
syn match pplStatement "^\%[\s]\+return\%[s]\s" contained

"Regions
syn region pplFunction start="^\%[\s]\+function\s" end="^\%[\s]\+end\-function\>" fold transparent contains=pplFor,pplVariable,pplIf,pplStatement,pplEvaluate,pplScope,pplType,pplObject,pplRecordFunction,pplBuiltinFunction,pplSystemVariable,pplComment,pplString
syn region pplIf start="^\%[\s]\+if\s" end="^\%[\s]\+end\-if\>" fold  transparent contains=pplFor,pplVariable,pplIf,pplStatement,pplEvaluate,pplBuiltinFunction,pplSystemVariable,pplString
syn region pplFor start="^\%[\s]\+for\s" end="^\%[\s]\+end\-for\>" fold  transparent contains=pplFor,pplVariable,pplIf,pplStatement,pplEvaluate,pplBuiltinFunction,pplSystemVariable,pplString
syn region pplEvaluate start="^\%[\s]\+evaluate\s" end="^\%[\s]\+end\-evaluate\>" fold transparent contains=pplFor,pplVariable,pplIf,pplStatement,pplEvaluate,pplBuiltinFunction,pplSystemVariable,pplString

syn region pplString start="'" end="'"
syn region pplString start=+"+ end=+"+
syn region pplComment start=+/\*+ end=+\*/+ fold 
syn region pplComment start="rem\s" end=";" 


let b:current_syntax = "ppl"

"DEFINE GROUP HIGHLIGHT
hi def link pplLoops			Statement
hi def link pplBranch			Conditional
hi def link pplString			String
hi def link pplType			Type
hi def link pplObject			Type 
hi def link pplVariable			Identifier
hi def link pplStatement		Statement
hi def link pplScope  		      Statement
hi def link pplComment			Comment
hi def link pplBuiltinFunction	Function
hi def link pplRecordFunction	      Function
hi def link pplSystemVariable		Special

"TO BE REMOVED EVENTUALLY
hi def link pplTest          		String
