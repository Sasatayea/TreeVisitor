grammar TreeVisitor ;

start:((method|void)*main?)|(main?(method|void)*)|(method* main void*)|(method|void)*;


method:Ws* (((P|'public') Ws* 'static'?)|((P|'public')? Ws* 'static')) Ws* ('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*'('
        (('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*)?(','Ws*('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*)*')'Ws*
       '{' Ws* (if|nestedif|for|switch|while|do_while|varSignif|varInt|varFloat|varBool|varString|nestedif|varfor|print|array)*WS*
        'return' Ws* Id Ws* Semicolon Ws*
        '}'Ws*;
void:Ws* (P|'public') Ws* 'static'? Ws* 'void' Ws* Id Ws*'('(('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*)?
        (','Ws*('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws*)*')'Ws*'{' Ws*
        (if|nestedif|for|switch|while|do_while|varSignif|varInt|varFloat|varBool|varString|nestedif|varfor|print|array)*WS*
        '}'Ws*;
main:Ws*'public'Ws* 'static'Ws* 'void'Ws* 'main'Ws* '(' Ws* 'String'Ws*'['Ws*']'Ws*'args'Ws*')' Ws* '{' Ws*
        (if|nestedif|for|switch|while|do_while|varSignif|varInt|varFloat|varBool|varString|nestedif|varfor|print|array)*WS*
        Ws*'}'Ws*;
switch:'switch'Ws*'('Ws*(Id|Integer|switchcond)')'Ws*'{'Ws*
            (WS*'case'Ws* Ws*(Integer|'\''Id'\'')Ws* Ws*':'Ws*'{'?Ws*
                (print|for|if|switch)*Ws*'}'?Ws*
                'break'Ws*Semicolon Ws*)+
            (Ws*'default'Ws*':'Ws*
                (print|for|if)*
            )?WS*
        Ws*'}';
print:'System.out.println('Ws*(Id|String)Ws*')'Ws*';'Ws*;
array: Ws* ('int'|'double'|'long'|'float'|'String'|'bool') Ws*'['Ws*']'Ws* Id Ws*  (';'    |Ws* '='Ws* 'new'Ws*
        ('int'|'double'|'long'|'float'|'String'|'bool') Ws* '['Ws*Integer Ws*']' Ws*';'Ws* |
        Ws* '=' Ws* '{' (Integer  Ws* (','Ws* Integer Ws*)* ) Ws* '}'Ws*';'Ws*  );

arithmecp:  Ws* ('int'|'double'|'long'|'float'|'String'|'bool') Ws* Id Ws* '='
            Ws* ( Ws* Integer Ws*|Ws* ('sin'|'cos'|'tan') Ws*'(' Ws* Integer Ws*')'Ws* |'-'|'+'|'/'|'*')*
            Ws* ';' Ws* ;

switchcond:Ws*Id Ws* (ArithOpr1|ArithOpr2|'%')Ws*(Integer|Id);
for:('('Ws* Semicolon Ws* Semicolon Ws*')')|(Ws*'for'Ws*'('(Ws*varfor(',')*)* Semicolon (Ws* condfor)* Ws* Semicolon (Ws*varSignfor','?)* Ws*')'Ws*)
(('{' Ws*((varSignif|varInt|varFloat|varBool|varString|print|nestedif)*for*)?Ws*'}')|Ws?(varSignif|varInt|varFloat|varBool|print|varString|nestedif)Ws?|for Ws*)*;
varfor:'int'? (Ws* Id ( Ws* Eq Ws* Integer Ws*)? Ws*)+;
condfor:((Id Ws* (ArithOpr1|ArithOpr2))*(Integer|Id) Ws*Condoperation Ws* ((Integer|Id)Ws* (ArithOpr1|ArithOpr2)?)+);
varSignfor:(Id Ws*('++'|'--'))|(Id Ws*('+='|'-='|'*='|'/=')Integer);
nestedif: (Ws* if Ws* (elseif)* Ws* else?);
if: Ws*'if'Ws*'(' Ws? logic ')' Ws*(('{' Ws?((varSignif|varInt|varFloat|varBool|varString|print)*if*)Ws*'}')|Ws*(varSignif|varInt|varFloat|varBool|varString)?Ws*|if) ;
elseif:Ws*'else'if;
else:Ws*'else'Ws*(('{'Ws*((varSignif|varInt|varFloat|varBool|varString)+if*)Ws*'}')|(varInt|varFloat|varBool)Ws*|if);
varSignif:((WS* Id WS*('++'|'--')WS*)|(('++'|'--')WS* Id WS*))Semicolon Ws*;
varInt:('int'? Ws* Id (Semicolon| Ws* Eq Ws* Integer Ws* Semicolon) Ws*);
varFloat:(('double'|'float')? Ws* Id (Semicolon| Ws* Eq Ws* Float Ws* Semicolon) Ws*);
varBool:('boolean'? Ws* Id (Semicolon| Ws* Eq Ws* Boolean Ws* Semicolon) Ws*);
varString:('String'? Ws* Id (Semicolon| Ws* Eq Ws* String Ws* Semicolon) Ws*);
cond: (Id Ws*((Operation|Doperation) Ws? Id? Ws?)? (Condoperation|Doperation) Ws* (Integer|Float|Id) Ws*)+;
logic: cond ((Ws* Logicaloperator Ws* cond Ws*)*);
while: Ws*('while' Ws* '(' Ws* cond Ws* ')' Ws* '{' Ws*
    (switch| if |varSignif|varInt|varFloat|varBool|varString|nestedif |print| for | varSignfor|while)* Ws* '}' Ws*);

do_while: (Ws* 'do' Ws* '{' Ws* (switch+| if+ |varSignif|varInt|varFloat|print|varBool|varString|nestedif | for+ | varSignfor+)* Ws* '}' WS*
    'while' Ws* '(' Ws* cond Ws* ')' Ws* Semicolon Ws*);


//tokens
Type:('int'|'double'|'string'|'char'|'long'|'float'|'boolean');
Integer:('0'..'9')+;
Float: ('0'..'9')*('.')('0'..'9');
Boolean:('true'|'false');
Id:('a'..'z'|'A'..'Z'|'_'|'$')+('0'..'9'|'a'..'z'|'A'..'Z'|'_'|'$')*;
Scol:';';
Ass: '=';
WS:(' '|'\t'|'\r'|'\n')+{skip();};
Condoperation:('>'|'<'|'<='|'>='|'=='|'!=');
Logicaloperator:('&&'|'||');
Obrack: ('(');
Cbrack: (')');
Opbrack: ('{');
Closbrack: ('}');
Oper : ('+' | '-' | '*' | '/' | '|' | '&' | '%');
IncDec:('++'|'--');