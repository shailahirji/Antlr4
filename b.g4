//define a grammar called b
grammar b;
//parser rules
datamodel: value;
value: object | array|DETAILS;
object: '<'keyvalue (',' keyvalue)*'>';
keyvalue :DETAILS '->' value;
array : '[' value (',' value)* ']'; //changed this to enable retrieving  more than 2 books per input text
//lexar rules
WS: [ \t\n\r]+ ->skip;
DETAILS :'"'(' '|[a-zA-Z0-9",'/:.])+'"'| [0-9]+ ;