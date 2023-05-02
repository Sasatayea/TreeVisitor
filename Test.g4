grammar Test;
// parsars
start: (classes WS? | array WS? | object_class WS? | constructor1 WS? | coments)+;

var: (var1 WS?| var2 WS?| var3 WS?| var4 WS?| var5 WS?| var6 WS?| var7 WS?| var8 WS?| var9 WS? | array WS? | object_class)+;
var1: ((Public WS | Static WS)? (Type_byte WS)? Id WS? (Equal WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?| Sim WS?
    | Augop WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer | Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?));
var6: ((Public WS | Static WS)? (Type_int WS)? Id WS? (Equal WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?| Sim WS?
    | Augop WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?));
var7: ((Public WS | Static WS)? (Type_long WS)? Id WS? (Equal WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?| Sim WS?
    | Augop WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?));
var8: ((Public WS | Static WS)? (Type_short WS)? Id WS? (Equal WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?| Sim WS?
    | Augop WS? ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer| Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim WS?));
var2: ((Public WS | Static WS)? (Type_Float WS)? Id WS? (Equal WS? ((Id | (Integer (Dot Integer)?) | Trigonometric Obrac WS? Integer WS? Cbrac)
    | ((Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim? WS?| Sim? WS?
    | Augop WS? ((Id | (Integer (Dot Integer)?) | Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim? WS?));
var9: ((Public WS | Static WS)? (Type_Double WS)? Id WS? (Equal WS? ((Id | (Integer (Dot Integer)?) | Trigonometric Obrac WS? Integer WS? Cbrac)
    | ((Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim? WS?| Sim? WS?
    | Augop WS? ((Id | (Integer (Dot Integer)?) | Trigonometric Obrac WS? Integer WS? Cbrac) | ((Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac) WS? (WS? ArithmaticOp? WS? (Id | Integer (Dot Integer)? | Trigonometric Obrac WS? Integer WS? Cbrac))*)) WS? Sim? WS?));
var3:((Public WS | Static WS)? (Type_Boolean WS)? Id WS? (Sim? WS? | Equal WS? Boolean WS? Sim? WS?));
var4: ((Public WS | Static WS)? (Type_Stirng WS)? Id WS? (Sim? WS? | Equal WS? ((Cot WS? Id? WS? Cot | Id) WS? (WS? ArithmaticOp WS? (Cot WS? Id? WS? Cot | Id))*)
    WS? Sim? WS? | Augop WS? ((Cot WS? Id? WS? Cot | Id) WS? (WS? ArithmaticOp WS? (Cot WS? Id? WS? Cot | Id))*) WS? Sim? WS?));
var5: ((Public WS | Static WS)? (Type_char WS)? Id WS? (Sim? WS?
    | Equal WS? ((Singl_Cot WS? Id? WS? Singl_Cot | Id) WS? (WS? ArithmaticOp WS? (Singl_Cot WS? Id? WS? Singl_Cot | Id))*)
    WS? Sim? WS? | Augop WS? ((Singl_Cot WS? Id? WS? Singl_Cot | Id) WS?
    (WS? ArithmaticOp WS? (Singl_Cot WS? Id? WS? Singl_Cot | Id))*) WS? Sim? WS?));

condition: ((Id | Integer (Dot Integer)?) WS? (WS? ArithmaticOp WS? (Id | Integer (Dot Integer)?))* WS?
    (LogicalOp | ConditionOp | Open | Close) WS? (Id | Integer (Dot Integer)?) WS? (WS? ArithmaticOp WS? (Id | Integer (Dot Integer)?))*);

if: (if1 WS?)+;
condition_If: (Obrac WS? condition WS? Cbrac);
body_if: (Obr WS? (coments | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr | WS? var WS?);
body_else: (Obr WS? (coments | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr);
else_if: (Else WS? (If WS? condition_If WS? body_if WS? | body_else));
if1: (If WS? condition_If WS? body_if WS? else_if* WS?);

inc_dec: (Id Inc WS? (Com WS? (Id Inc | Inc Id))* | Inc Id WS? (Com WS? (Id Inc | Inc Id))*);
for: (for1 WS?)+;
condition_for: (Obrac WS? (var (Com var)*) WS? Sim WS? condition WS? Sim WS? inc_dec WS? Cbrac);
body_for: (Obr WS? (coments | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr);
for1: (For_loop WS? condition_for WS? body_for WS?);

switch: (switch1 WS?)+;
condition_switch: (Obrac WS? ((Integer | Id) WS? (And WS? (Integer | Id))?) WS? Cbrac);
body_switch: (Obr WS? ((Case WS? (Integer | (Singl_Cot WS? Id Singl_Cot)) WS? Double_Dot WS?
    (coments | if | var | for | switch | while | do_while | Brack WS? Sim | inc_dec WS? Sim | array)? WS?)+ (Default WS? Double_Dot WS?
    (coments | if | var | for | switch | while | do_while | Brack WS? Sim | inc_dec WS? Sim | array)? WS?)?)? WS? Cbr WS?);
switch1: (Switch WS? condition_switch WS? body_switch WS?);

while: (while1 WS?)+;
condition_while: (Obrac WS? condition WS? Cbrac);
body_while: (Obr WS? (coments | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr | WS var? WS?);
while1: (While WS? condition_while WS? body_while WS?);

do_while: (do_while1 WS?)+;
condition_do_while: (Obrac WS? condition WS? Cbrac);
body_do_while: (Obr WS? (coments | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr);
do_while1: (Do WS? body_do_while WS? While WS? condition_do_while WS? Sim WS?);

any_method: (any_method1 WS?)+;
head_of_any_method: ((Public? WS Static? WS)? (Type_Double | Type_char | Type_Boolean | Type_Float | Type_short | Type_int | Type_long | Type_byte | Type_Stirng)
    WS Id WS? Obrac WS? (var WS? (Com? var)*)? WS? Cbrac);
body_of_any_method: (Obr WS? (coments | var | if | for | switch | while | do_while | inc_dec WS? Sim)* WS? Return WS?
    (Id | Integer | Singl_Cot WS? Id? WS? Singl_Cot | Double_Dot WS? Id? WS? Double_Dot) WS? Sim WS? Cbr WS?);
head_of_void_method: (Public? WS? Static? WS? Void WS? Id WS? Obrac WS? (var WS? (Com? var)*)? WS? Cbrac);
body_of_void_method: (Obr WS? (coments | object_class | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr WS?);
any_method1: (head_of_any_method WS? body_of_any_method WS? | head_of_void_method WS? body_of_void_method WS?);

main_method: (main_method1 WS?)+;
head_of_main_method: ((Public WS)? (Static WS)? Void WS Main WS? Obrac WS? (Type_Stirng WS? (Ob WS? Cb) WS? Args WS? | var)? Cbrac);
body_of_main_method: (Obr WS? (coments | object_class | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr WS?);
main_method1: (head_of_main_method WS? body_of_main_method WS?);

array: (array1 | array2 | array3 | array4 | array5 | array6 | array7 | array8 | array9)+;
array1: (Type_char WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_char WS? Ob WS?
    (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS? | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Singl_Cot WS? (Id | Integer) WS? Singl_Cot WS? Com?)+ WS? Cbr WS? Sim WS?));
array2: (Type_Boolean WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_Boolean WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Boolean WS? Com?)+ WS? Cbr WS? Sim WS?));
array3: (Type_Stirng WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_Stirng WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Double_Dot WS? (Id | Integer) WS? Double_Dot WS? Com?)+ WS? Cbr WS? Sim WS?));
array4: (Type_Double WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_Double WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Integer (Dot Integer)? WS? Com?)+ WS? Cbr WS? Sim WS?));
array5: (Type_short WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_short WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Integer WS? Com?)+ WS? Cbr WS? Sim WS?));
array6: (Type_int WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_int WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Integer WS? Com?)+ WS? Cbr WS? Sim WS?));
array7: (Type_long WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_long WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Integer WS? Com?)+ WS? Cbr WS? Sim WS?));
array8: (Type_Float WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_Float WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Integer (Dot Integer)? WS? Com?)+ WS? Cbr WS? Sim WS?));
array9: (Type_byte WS? Ob WS? Cb WS? Id WS? (Sim WS? | Equal WS? New WS Type_byte WS? Ob WS? (Integer | Id Dot Length Obrac Cbrac) WS? Cb WS? Sim WS?
    | Equal WS? Obr WS? (WS? Id WS? Com?| WS? Integer WS? Com?)+ WS? Cbr WS? Sim WS?));

classes: (class1)+;
constructor1: ((Public WS)? Id WS? Obrac WS? ((Type_byte | Type_Float | Type_long | Type_int | Type_short | Type_Double
    | Type_Boolean | Type_Stirng | Type_char ) WS Id WS? (WS? Com WS? (Type_byte | Type_Float | Type_long | Type_int | Type_short
    | Type_Double | Type_Boolean | Type_Stirng | Type_char ) WS Id WS?)* )? WS? Cbrac WS? Obr WS?
    (coments | var | if | for | switch | while | do_while | array | inc_dec WS? Sim)* WS? Cbr WS?);
class1: (((Abstract WS)? Public WS | Public WS (Abstract WS)?)? Class WS Id WS?
    (WS? Open WS? Id WS?(WS? Com WS? Id WS?)* WS? Close WS?)?
    WS? (Extends WS Id | Implements WS Id)? Obr WS? (coments | constructor1 | var |main_method | any_method)* WS? Cbr WS?);

object_class: (Id WS Id WS? (Sim WS? | Equal WS? New WS Id WS? Obrac WS? ((Id | Integer) WS? (WS? Com WS? (Id | Integer))*)? WS? Cbrac WS? Sim WS?));

coments: ((Coments WS? (.*?) WS?) | (Comments WS? ((.*?)) WS))+;

// tokens
Public: ('public' | 'private' | 'protected');
Class: 'class';
Type_Double: 'double';
Type_Float: 'float';
Type_int: 'int';
Type_byte: 'byte';
Type_short: 'short';
Type_long: 'long';
Type_Boolean: 'boolean';
Type_Stirng: 'String';
Type_char: 'char';
Args: 'args';
Extends: 'extends';
Implements: 'implements';
Abstract: 'abstract';
Main: 'main';
Static: 'static';
Void: 'void';
Return: 'return';
Length: 'length';
If: 'if';
Else: 'else';
For_loop: 'for';
Switch: 'switch';
While: 'while';
Do: 'do';
Case: 'case';
Default: 'default';
Brack: 'brack';
Continue: 'continue';
New: 'new';
Boolean: ('true' | 'false');
Trigonometric: ('sin' | 'cos' | 'tan' | 'sinh' | 'sqrt' | 'cosh' | 'tanh');
Id: (('a'..'z'|'A'..'Z'|'_'|'$')('a'..'z'|'A'..'Z'|'_'|'$'|'0'..'9')*)+;
Switch_Condtion: ('a'..'z' | 'A'..'Z')+;
Integer: ('0'..'9')+;
WS: (' '|'\t'|'\r'|'\n')+{skip();};
ArithmaticOp: ('+' | '-' | '*' | '/' | '%');
Augop: ('+=' | '-=' | '*=' | '/=' | '%=');
Open: '<';
Close: '>';
Coments:  '/*' | '*/';
Comments: '//';
ConditionOp: ('>' | '>=' | '<' | '<=' | '==' | '!=');
LogicalOp: ('&&'| '||');
Inc: ('++' | '--');
Equal: '=';
And: '^';
Dot: '.';
Com:',';
Cot: '"';
Singl_Cot: '\'';
Double_Dot: ':';
Obrac: '(';
Cbrac: ')';
Obr: '{';
Cbr: '}';
Ob: '[';
Cb: ']';
Sim: ';';