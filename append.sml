(* This is just some quick SML code to append a list *)

fun append (xs, ys) =
  case xs of
          [] => ys
    | x::xs' => x::append(xs', ys)
