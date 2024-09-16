if exists("b:current_syntax")
  finish
endif

syntax match ghoulIdentifier /\<\a\+\>/
syntax match ghoulFunction /\<\v\a+(\()@=/

syntax match ghoulOperator /+/
syntax match ghoulOperator /-/
syntax match ghoulOperator /=/
syntax match ghoulOperator /!=/
syntax match ghoulOperator />=/
syntax match ghoulOperator /<=/
syntax match ghoulOperator /\*/
syntax match ghoulOperator /\//
syntax match ghoulOperator />/
syntax match ghoulOperator /</
syntax match ghoulOperator /&&/
syntax match ghoulOperator /||/


syntax keyword ghoulConditional if else
syntax keyword ghoulRepeat for while

syntax match ghoulNumber /\d\+/
syntax keyword ghoulBoolean true false
syntax region ghoulString start=/"/ end=/"/

syntax match ghoulKeyword /:/
syntax keyword ghoulKeyword break
syntax match ghoulClass /:;/
syntax match ghoulKeyword /::/
syntax match ghoulStatement /->/
syntax match ghoulDelimiter /;/
syntax match ghoulDelimiter /\./
syntax match ghoulDelimiter /\,/
syntax match ghoulDelimiter /(/
syntax match ghoulDelimiter /)/
syntax match ghoulDelimiter /{/
syntax match ghoulDelimiter /}/
syntax match ghoulComment /#.*/

syntax keyword ghoulInclude use
syntax keyword ghoulMacro print
syntax keyword ghoulConstant nil
syntax match ghoulSpecial /\[/
syntax match ghoulSpecial /\]/

highlight link ghoulKeyword Keyword
highlight link ghoulClass Keyword
highlight link ghoulStatement Statement
highlight link ghoulIdentifier Identifier
highlight link ghoulFunction Function
highlight link ghoulOperator Operator
highlight link ghoulConditional Conditional
highlight link ghoulRepeat Repeat
highlight link ghoulComment Comment
highlight link ghoulNumber Number
highlight link ghoulBoolean Boolean
highlight link ghoulString String
highlight link ghoulDelimiter Delimiter
highlight link ghoulInclude Include
highlight link ghoulMacro Macro
highlight link ghoulConstant Constant
highlight link ghoulSpecial Special
