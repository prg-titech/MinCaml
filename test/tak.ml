(*
 * Tak function to measure the performance
 *   https://en.wikipedia.org/wiki/Tak_(function)
 *
 * This is a very lower level benchmark only using recursion.
 *
 * Note:
 * After passing LLVM optimization passes, the outer tak() function call is transformed to a loop.
 *)

let rec tak x y z =
  if x <= y then z else
    tak (tak (x-1) y z) (tak(y-1) z x) (tak(z-1) x y)
in
let _ = tak 14 8 3  in
()
