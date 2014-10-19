(* Here are some val-bindings and how they can be made easier *)

fun sum_triple (triple :  int * int * int) =
  case triple of
    (x,y,z) => x + y + z
    
fun full_name (r : {first:string,middle:string,last:string}) =
  case r of
    {first=x,middle=y,last=z} => x ^ " " ^ y ^ " " ^z
    
(* Here is a simpler way to write them *)
    
fun sum_triple_two (triple :  int * int * int) =
  let val (x,y,z) = triple
  in
    x + y + z
  end
  
fun full_name (r : {first:string,middle:string,last:string}) =
  let val {first=x,middle=y,last=z} = r
  in
    x ^ " " ^ y ^ " " ^z
  end
  
(* Finally, here is the easiest way to write these functions *)

fun sum_triple_three(x,y,z) =
  x + y + z
  
fun full_name_three {first=x,middle=y,last=z} =
  x ^ " " ^ y ^ " " ^z
