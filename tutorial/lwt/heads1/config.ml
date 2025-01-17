open Mirage

let main =
  main ~packages:[ package "duration" ] "Unikernel.Heads1"
    (console @-> time @-> job)

let () = register "heads1" [ main $ default_console $ default_time ]
