module Let_syntax = {
  let bind = (~f, v) =>
    switch (v) {
    | Some(v) => f(v)
    | None => None
    };
};

let main = () => {
  let%bind x = Some(42);
  Some();
};
