(*-Typing variants-*)
type nat 		= 	| NAT 			of int ;;

type boolean	= 	| BOOL 			of bool ;;

type term       = 	| TERM_NAT 		of nat 
					| TERM_BOOL 	of bool 
					| TERM_SUC 		of string
					| TERM_PRED 	of string
					| TERM_EHZERO	of string
					;;





(*-Program code-*)
let rec show 	(l1: string list) (count: int) =
	match l1 with
	| h::t 	-> Printf.printf "[%d] -> %s\n"count h; show t (count+1)
	| []	-> ()
;;

let analyze (exp: 'a) : term =
	match exp with
	| "true" 	-> TERM_BOOL 	true
	| "false" 	-> TERM_BOOL 	false
	| "suc"		-> TERM_SUC 	"suc"
	| "pred"	-> TERM_PRED 	"pred"
	| "ehzero"  -> TERM_EHZERO  "ehzero"

let separate 	(expression:string) : string list =
	let l1 = String.split_on_char ' ' expression in
	show l1 0; l1;;

let programa () =
    separate (read_line ());;

programa ();;
