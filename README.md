# Ocaml-ConsString
Module to implementing pattern match-able strings (essentially as Char lists).
Module name is ConsString which defines the cons_string type.
cons_string has a recursive type definition (type cons_string = Nil | Cons of char*cons_string;;).
Therefore, cons_strings are both pattern match-able and can looped through with recursive functions just like lists.
The type definition of Cons is restricted to char*con_strings, which is a special case of the general type 'a cons_string = Nil | Cons of 'a * cons_string;;.
Only allowing chars is important because it means that during pattern matching, the types of the components of a Cons(ch, c_s) are known and so char-specific functions can be used on ch - i.e. ch will never be an int or any general type 'a.
