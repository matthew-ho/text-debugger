open Text_debugger_test

(** Main entry point for our test runner.

    This aggregates all the test suites and call Alcotes to run them. When
    creating a new test suite, don't forget to add it here! *)

let () =
  Alcotest.run "text-debugger" [ "Utils", Utils_test.suite ]
