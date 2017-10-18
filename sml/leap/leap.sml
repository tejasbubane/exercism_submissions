fun leapYear (year: int): bool =
  let fun divisibleBy (num: int): bool =
        (year mod num) = 0
  in
      (divisibleBy 400) orelse (divisibleBy 4) andalso (not (divisibleBy 100))
  end
