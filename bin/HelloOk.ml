module Let_syntax =
  struct
    let bind ~f  v =
      match v with | ((Some (v))[@explicit_arity ]) -> f v | None -> None
  end
let main () =
  [%bind
    let x = ((Some (42))[@explicit_arity ]) in ((Some (()))
      [@explicit_arity ])]
