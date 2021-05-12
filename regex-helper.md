Regular Expressions (Regex)

https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285

https://medium.com/factory-mind/regex-cookbook-most-wanted-regex-aa721558c3c1

https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference

https://github.com/PrateekKumarSingh/CheatSheets/blob/master/RegEx/Regular_expressions_CheatSheet_By_DavidChild.pdf

https://regex101.com/

https://regexr.com/5a4uj

https://regexone.com/

https://github.com/pemistahl/grex (download grex.exe und nach C:\Windows\system32\ legen)

https://regex.help/



Typische Operatoren
-eq/ne            Zahlen und eindeutige Werte
-like/notlike         Textvergleich mit Wildcards 
-match/notmatch    Reg. Expression
-contains/notcontains    Beinhaltet

Regex Cheatsheet
Character classes
.	any character except newline
\w\d\s	word, digit, whitespace
\W\D\S	not word, digit, whitespace
[abc]	any of a, b, or c
[^abc]	not a, b, or c
[a-g]	character between a & g
Anchors
^abc$	start / end of the string
\b\B	word, not-word boundary
Escaped characters
\.\*\\	escaped special characters
\t\n\r	tab, linefeed, carriage return
Groups & Lookaround
(abc)	capture group
\1	backreference to group #1
(?:abc)	non-capturing group
(?=abc)	positive lookahead
(?!abc)	negative lookahead
Quantifiers & Alternation
a*a+a?	0 or more, 1 or more, 0 or 1
a{5}a{2,}	exactly five, two or more
a{1,3}	between one & three
a+?a{2,}?	match as few as possible
ab|cd	match ab or cd


Lesson Notes


abc…	Letters

123…	Digits

\d	Any Digit

\D	Any Non-digit character

.	Any Character

\.	Period

[abc]	Only a, b, or c

[^abc]	Not a, b, nor c

[a-z]	Characters a to z

[0-9]	Numbers 0 to 9

\w	Any Alphanumeric character

\W	Any Non-alphanumeric character

{m}	m Repetitions

{m,n}	m to n Repetitions

*	Zero or more repetitions

+	One or more repetitions

?	Optional character

\s	Any Whitespace

\S	Any Non-whitespace character

^…$	Starts and ends

(…)	Capture Group

(a(bc))	Capture Sub-group

(.*)	Capture all

(abc|def)	Matches abc or def
