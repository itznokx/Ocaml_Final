(*-Typing variants-*)
type nat 	= 	| NAT 		of int ;;

type boolean	= 	| BOOL 		of bool ;;

type nat->nat   =   	| SUC 		of nat 
			| PRED 		of nat

type term       = 	| TERM_NAT	of nat 
			| TERM_BOOL 	of bool 
			| TERM_SUC	of nat
			| TERM_PRED 	of nat
			| TERM_EHZERO	of nat
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
    separate (read_line ());;

programa ();;
