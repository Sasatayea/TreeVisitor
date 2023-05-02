grammar TreeVisitor ;

//start:((method|void)*main?)|(main?(method|void)*)|(method* main void*)|(method|void)*;
start: comment;

comment:(WS* Comment WS*)*;


method:Ws* ((P|'public') Ws* 'static'?) Ws* ('int'|'boolean'|'Tree') Ws* Id Ws*'('Ws*
        (('int'|'boolean'|'Tree') Ws* Id Ws*)?(','Ws*('int'|'boolean'|'Tree') Ws* Id Ws*)*')'Ws*
       '{' Ws* (if|nestedif|while|varSignif|var|print)* WS*
        'return' Ws* (Id|Boolean) Ws* Scol Ws* '}'Ws*;

void:Ws* (P|'public') Ws* 'static'? Ws* 'void' Ws* Id Ws*'('(('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*)?
        (','Ws*('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*)*')'Ws*'{' Ws*
        (if|while|varSignif|varInt|varFloat|varBool|varString|nestedif|print)*WS*
        '}'Ws*;
main:Ws*'public'Ws* 'static'Ws* 'void'Ws* 'main'Ws* '(' Ws* 'String'Ws*'['Ws*']'Ws*'args'Ws*')' Ws* '{' Ws*
        (if|nestedif|while|varSignif|varInt|varFloat|varBool|varString|nestedif|print)*WS*
        Ws*'}'Ws*;
print:'System.out.println('Ws*(Id|String)Ws*')'Ws*';'Ws*;

arithmecp:  Ws* ('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws* '='
            Ws* ( Ws* Integer Ws*|Ws* ('sin'|'cos'|'tan') Ws*'(' Ws* Integer Ws*')'Ws* |'-'|'+'|'/'|'*')*
            Ws* ';' Ws* ;

switchcond:Ws*Id Ws* (ArithOpr1|ArithOpr2|'%')Ws*(Integer|Id);
for:('('Ws* Semicolon Ws* Semicolon Ws*')')|(Ws*'for'Ws*'('(Ws*varfor(',')*)* Semicolon (Ws* condfor)* Ws* Semicolon (Ws*varSignfor','?)* Ws*')'Ws*)
(('{' Ws*((varSignif|varInt|varFloat|varBool|varString|print|nestedif)*for*)?Ws*'}')|Ws?(varSignif|varInt|varFloat|varBool|print|varString|nestedif)Ws?|for Ws*)*;
varfor:'int'? (Ws* Id ( Ws* Eq Ws* Integer Ws*)? Ws*)+;
condfor:((Id Ws* (ArithOpr1|ArithOpr2))*(Integer|Id) Ws*Condoperation Ws* ((Integer|Id)Ws* (ArithOpr1|ArithOpr2)?)+);
varSignfor:(Id Ws*('++'|'--'))|(Id Ws*('+='|'-='|'*='|'/=')Integer);

if: Ws*'if'Ws*'(' Ws? ifCond ')' Ws*(('{' Ws?((var)*if*)Ws*'}')|Ws*(var)?Ws*|if) ;
else:Ws*'else'Ws*(('{'Ws*((var)+if*)Ws*'}')|(var)Ws*|if);
elseif:Ws*'else'if;
nestedif: (Ws* if Ws* (elseif)* Ws* else?);

varSignif:((WS* Id WS*('++'|'--')WS*)|(('++'|'--')WS* Id WS*))Semicolon Ws*;
varInt:(Ws* 'int'? Ws* Id Ws*(Scol| Ws* Eq Ws* (Integer|Id) Ws* Scol Ws*) Ws*);
varFloat:(('double'|'float')? Ws* Id Ws*(Scol| Ws* Eq Ws* Float Ws* Scol) Ws*);
varBool:(Ws* 'boolean'? Ws* Id Ws* (Scol| Ws* Eq Ws* Boolean Ws* Scol) Ws*);
varString:('String'? Ws* Id Ws* (Scol| Ws* Eq Ws* String Ws* Scol) Ws*);
varTree:(Ws* 'Tree'? Ws* Id Ws*(Scol| Ws* Eq Ws* (Integer|Id) Ws* Scol Ws*) Ws*);
varId:Ws*Id Ws* Eq Ws* (Id|Boolean) Ws* Scol Ws*;
var_op: Ws*Id Ws* Eq Ws* Id Ws* ('+' | '-' | '*' | '/' | '|' | '&' | '%') Ws* (Id|Integer) Ws* Scol Ws* ;
var_dot: Ws* Id Ws* Eq Ws* Id'.' Id'(' Ws* Id? Ws* ')' Ws* Scol Ws* ;
var_child: Ws* Id Ws* Eq Ws* Id Ws* (Id|'Tree') Ws*'('')' Ws* Scol Ws* ;
var: varSignif|varInt|varFloat|varBool|varString|varTree|varId|var_op|var_dot|var_child;

ifCond: Ws*Id Ws*| Ws* Id Ws* Condoperation Ws*Id Ws*|Ws* '!'Ws*'('Ws*Id Ws* Condoperation Ws*Id Ws* ')'  ;
cond: (Id Ws*((Operation|Doperation) Ws? Id? Ws?)? (Condoperation|Doperation) Ws* (Integer|Float|Id) Ws*)+;
logic: cond ((Ws* Logicaloperator Ws* cond Ws*)*);

while: Ws*('while' Ws* '(' Ws* (cond|Id) Ws* ')' Ws* '{' Ws*
    ( var|nestedif  )* Ws* '}' Ws*);


//tokens
Type:('int'|'double'|'string'|'char'|'long'|'float'|'boolean'|'Tree');
Integer:('0'..'9')+;
Float: ('0'..'9')*('.')('0'..'9');
Boolean:('true'|'false');
Id:('a'..'z'|'A'..'Z'|'_'|'$')+('0'..'9'|'a'..'z'|'A'..'Z'|'_'|'$')*;
Scol:';';
Eq: '=';

Ws:(' '|'\t'|'\r'|'\n')+{skip();};
Condoperation:('>'|'<'|'<='|'>='|'=='|'!=');
Logicaloperator:('&&'|'||');
Obrack: ('(');
Cbrack: (')');
Opbrack: ('{');
Closbrack: ('}');
Oper : ('+' | '-' | '*' | '/' | '|' | '&' | '%');
IncDec:('++'|'--');
Comment: Ws?'//' ~('\r'|'\n')* ;
Test:'aj';