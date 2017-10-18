fun name (input: string option): string =
  case input of
      SOME i => "One for " ^ i ^ ", one for me."
    | NONE => "One for you, one for me."
