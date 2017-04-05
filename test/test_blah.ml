open Core.Std
open OUnit2

let test_blah _ =
  assert_equal 3 (1 + Blah.two)

let test_quickcheck _ =
  let gen = List.gen (Quickcheck.Generator.singleton Blah.two) in
  let f lst =
    List.hd lst
    |> Option.value ~default:Blah.two
    |> assert_equal Blah.two
  in
  Quickcheck.test gen ~f

let suite =
  "suite" >:::
    [
      "test_blah" >:: test_blah;
      "test_quickcheck" >:: test_quickcheck;
    ]

let () = run_test_tt_main suite
