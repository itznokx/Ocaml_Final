let rec show 	(l1: string list) (count: int) =
	match l1 with
	| h::t 	-> Printf.printf "[%d] -> %s\n"count h; show t (count+1)
	| []	-> ()
;;



let separate 	(expression:string) : string list =
	let l1 = String.split_on_char ' ' expression in
	show l1 0; l1;;

let rec analyze		(l1 : string list) 	=
	

let programa () =
    separate (read_line ());;

programa ();;
