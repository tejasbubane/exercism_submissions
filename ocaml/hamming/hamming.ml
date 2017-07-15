open Core

type nucleotide = A | C | G | T

let hamming_distance first_nucleotide second_nucleotide =
  match (List.zip first_nucleotide second_nucleotide) with
  | None -> None
  | Some nucleotides ->
    Some (List.fold_left
            nucleotides
            ~f:(fun acc (a, b) -> if a <> b then acc + 1 else acc)
            ~init: 0)
