//define a grammar called b
grammar b;
//parser rules
datamodel: value;
value: object | array|DETAILS;
object: '<'keyvalue (',' keyvalue)*'>';
keyvalue :DETAILS '->' value;
array : '[' value ',' value ']';
//lexar rules
WS: [ \t\n\r]+ ->skip;
DETAILS :'"'(' '|[a-zA-Z0-9",'/:.])+'"'| [0-9]+ ;