infix |>
fun x |> f = f x

fun rebase (input_base: int, input_digits: int list,
            output_base: int): int list option =
  let val all_zero = List.all (fn x => x = 0) input_digits
      val any_negative = List.exists (fn x => x < 0) input_digits
      val invalid_digit = List.exists (fn x => x >= input_base) input_digits

      val invalid_input = all_zero orelse any_negative orelse invalid_digit
      val invalid_base = input_base <= 1 orelse output_base <= 1

      fun pow (base, exp) =
        if exp = 0
        then 1
        else base * pow(base, exp-1)

      fun to_base_ten acc remaining_digits =
        case remaining_digits of
            [] => acc
          | d::ds => to_base_ten (acc + d * pow(input_base, List.length(ds)))  ds

      fun to_output_base acc decimal =
        if decimal < output_base
        then (decimal mod output_base)::acc
        else to_output_base ((decimal mod output_base)::acc) (decimal div output_base)

  in
      if invalid_base orelse invalid_input
      then NONE
      else case input_digits of
               [] => NONE
             | _ => input_digits |> to_base_ten 0 |> to_output_base [] |> SOME
  end
