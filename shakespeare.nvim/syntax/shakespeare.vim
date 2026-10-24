if exists("b:current_syntax") | finish | endif
syntax case ignore

syntax match  splAct     /^\s*Act\s\+[IVXLCDM]\+\s*:.*$/
syntax match  splScene   /^\s*Scene\s\+[IVXLCDM]\+\s*:.*$/
syntax match  splSpeaker /^\s*\u[^:.\[\]]*:\s*$/

syntax region splStage start=/\[/ end=/\]/ contains=splStageWord
syntax keyword splStageWord Enter Exit Exeunt contained

syntax match splIO   /\c\(open your \(mind\|heart\)\|speak your mind\|listen to your heart\)/
syntax match splFlow /\c\(let us \(proceed\|return\) to \(scene\|act\)\|if so\|if not\)/
syntax keyword splStack Remember Recall

highlight default link splAct       Title
highlight default link splScene     Title
highlight default link splSpeaker   Identifier
highlight default link splStage     Special
highlight default link splStageWord Keyword
highlight default link splIO        Statement
highlight default link splFlow      Conditional
highlight default link splStack     Statement

let b:current_syntax = "shakespeare"
