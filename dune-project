(lang dune 2.0)
(name text-debugger)
(documentation "https://matthew-ho.github.io/text-debugger/")
(source (github matthew-ho/text-debugger))
(license MIT)
(authors "Matthew Ho")
(maintainers "Matthew Ho")

(generate_opam_files true)

(package
 (name text-debugger)
 (synopsis "Text Debugger?")
 (description "\
Text Debugger?
")
 (depends
  (ocaml (>= 4.08.0))
  (dune (>= 2.0))
  (alcotest :with-test)
  (odoc :with-doc)))
