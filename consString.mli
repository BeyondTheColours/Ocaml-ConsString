
type t

val fold_left : (char -> 'a -> 'a) -> t -> 'a -> 'a

val string_to_cons_string : string -> t

val cons_string_to_string : t -> string

val rev : t -> t

val concat : t -> t -> t

val length : t -> int

val contains : t -> char -> bool

val contains_count : t -> char -> int

;;
