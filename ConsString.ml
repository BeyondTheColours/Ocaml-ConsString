module ConsString =
struct
  type cons_string = |Nil |Cons of char*cons_string
                 
  let rec fold_left f c_s acc =
    match c_s with |Nil -> acc | Cons(c, t) -> fold_left f t (f c acc)
                                                 
  let string_to_cons_string s =
    let rec string_to_cons_string_worker s count acc =
      if count = 0 then Cons(s.[0], acc)
      else string_to_cons_string_worker s (count-1) (Cons(s.[count], acc))
    in string_to_cons_string_worker s ((String.length s)-1) Nil
  
  let cons_string_to_string c_s =
    let char_concat c s = s^(Char.escaped c)
    in fold_left char_concat c_s ""
      
  let rev c_s =
    let add_char c c_s = Cons(c, c_s)
    in fold_left add_char c_s Nil
                                                 
  let rec cons_string_concat a b =
    let add_char c c_s = Cons(c, c_s)
    in fold_left add_char (rev a) b
    
end
;;