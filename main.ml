(*-Typing variants-*)
type nat 		= Nat of int ;;

type boolean	= Bool of bool;;

type term       = 	| TT_Nat of nat 
					| TT_Bool of bool 
					| Suc of nat
					| Pred of nat
					| EhZero of nat
;;





(*-Program code-*)
let rec show 	(l1: string list) (count: int) =
	match l1 with
	| h::t 	-> Printf.printf "[%d] -> %s\n"count h; show t (count+1)
	| []	-> ()
;;

let separate 	(expression:string) : string list =
	let l1 = String.split_on_char ' ' expression in
	show l1 0; l1;;

	

let programa () =
    let readline = read_line () in
    separate (readline) ;;

programa ();;
