Repro for Reason+Merlin+ppx\_let issue.

This uses Reason master so that you need to pull submodules.

```
git submodule init
git submodule update
esy install
esy build
```

To see the problem:

```
esy vim bin/Hello.re
```

and move your cursor to literal `42` and execute `:MerlinTypeOf` command.

Note that with reformatted into OCaml it works well:

```
esy vim bin/HelloOk.ml
```
