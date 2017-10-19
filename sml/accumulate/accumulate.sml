(* accumulate
   given a list and a transformation function,
   apply the transformation function to each list element
   and return the results.

   Caveats: an empty list cannot be transformed
            do not use List.map from the standard basis
*)
fun accumulate (f: 'a -> 'b, xs: 'a list) : 'b list =
  let fun accumulate_tail_rec (acc, xs) =
        case xs of
            [] => acc
          | x::xs' => rev(accumulate_tail_rec(f(x)::acc, xs'))
  in
      accumulate_tail_rec([], xs)
  end
