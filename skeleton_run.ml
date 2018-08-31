(**************************************************************************)
(*  License header          *)
(**************************************************************************)

open Cil_types

(* As an example of a basic feature, this plug-in prints the number of
   files and global variables, or a warning if no files were given in the
   command line. *)
let run () =
  if Ast.is_computed () then
    let nb_files = List.length (File.get_all ()) in
    let ast = Ast.get () in
    let nb_globals = List.length ast.globals in
    Options.result "%d file(s), %d global(s)" nb_files nb_globals
  else
    Options.warning "no AST has been computed; \
                     specify at least one file in the command line"

let run_once, _ = State_builder.apply_once "Skeleton.run" [] run

let main () =
  if Options.Enabled.get () then run_once ()

let () =
  Db.Main.extend main
