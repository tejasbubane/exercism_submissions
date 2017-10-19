infix |>
fun x |> f = f x

fun response (input: string): string =
  let val chars = input |> String.explode
      val capitalized = chars |> (List.map Char.toUpper) |> String.implode
      val removeWhitespace = List.filter (fn x => not(Char.isSpace x))
      val removeDigits = List.filter (fn x => not(Char.isDigit x))
      val removePuncts = List.filter (fn x => not(Char.isPunct x))

      val shouting = capitalized = input
      val allNumbers = chars
                           |> removePuncts
                           |> removeWhitespace
                           |> List.all (fn x => Char.isDigit x)
      val silence = chars |> removeWhitespace |> null
      val question =
          let val chars = (chars |> removeWhitespace)
          in
              if null chars
              then false
              else List.last(chars) = #"?"
          end
  in
      if silence
      then "Fine. Be that way!"
      else if allNumbers andalso question
      then "Sure."
      else if allNumbers
      then "Whatever."
      else if shouting
      then "Whoa, chill out!"
      else if question
      then "Sure."
      else "Whatever."
  end
