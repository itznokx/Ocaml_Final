let rec analyze (expression: string) =
  let exp_splited = Array.of_list(String.split_on_char ' ' expression) in
  match exp_splited.(0) with
      | "(" -> "To do"
      | "true" | "false"  -> "Bool"
      | "suc"  | "pred"   -> "Nat -> Nat"
      | "ehzero"          -> "Nat -> Bool"
      | _                 -> "!"

  in
  Printf.printf("%s\n") (analyze (read_line ()));;