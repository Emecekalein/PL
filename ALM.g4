grammar ALM;

r : (IDENT | NUM_INST_CONST | NUM_REAL_CONST | STRING_CONST | COMENTARIOS | FRAGMENT | NL)+;

IDENT : [a-zA-Z][a-zA-Z0-9_]* ;

NUM_INST_CONST : '-'?[0-9]+ ;

NUM_REAL_CONST : ('-'?[0-9]+'.'[0-9]+ | '-'?[0-9]+[eE]'-'?[0-9]+ | '-'?[0-9]+'.'[0-9]+[eE]'-'?[0-9]+) ;

STRING_CONST : ('"'  ( ~["\r\n] | '""' )* '"' | '\'' ( ~['\r\n] | '\'\'' )* '\'') ;

COMENTARIOS : '!' FRAGMENT [\r\n] ;

FRAGMENT : ~[\r\n]+ ;

NL : '\r'? '\n' ;