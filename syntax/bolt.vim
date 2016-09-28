if exists("b:current_syntax")
    finish
endif

syntax keyword boltBoolean true false
syntax keyword boltConstant Number String Boolean Object Any Null Map
syntax keyword boltKeyword path type function extends return this null 
syntax keyword boltType root auth now
syntax keyword boltFunction read write create update delete key index validate prior
syntax region boltString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region boltString start=/\v'/ skip=/\v\\./ end=/\v'/

syntax match boltOperator "\v/"
syntax match boltOperator "\v|"
syntax match boltOperator "\v\!"
syntax match boltOperator "\v\="
syntax match boltOperator "\v\?"
syntax match boltOperator "\v\!\="
syntax match boltOperator "\v/\="

highlight link boltString String
highlight link boltConstant Constant
highlight link boltKeyword Keyword
highlight link boltFunction Function
highlight link boltOperator Operator
highlight link boltType Type
highlight link boltBoolean Boolean

let b:current_syntax = "bolt"
