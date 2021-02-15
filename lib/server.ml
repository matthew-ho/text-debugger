(* let rec build_list l in_channel =
  match input_line in_channel with
  | line -> build_list (line :: l) in_channel
  | exception End_of_file -> close_in in_channel;
  List.rev l *)

let rec loop () =
  (* let request = Stdio.In_channel.input_line stdin in
  let () =
    match request with
    | Some request ->
      Debugger.write "launch message"
    | None ->
      Debugger.write "error"
  in *)
  (* TODO: Catch errors *)
  let request = Json.parse (input_line stdin) in
  let response = Json.parse (input_line stdin) in
  let request_msg = Message.of_yojson request in
  let () =
  match request_msg with
  | Ok m -> MessageHandler.handle m
  | Error m -> ()
  in
  let () = print_endline (Json.json_to_string response) in
  loop ()

let start () = loop ()

(* let start () =
  (* let request = Json.from_channel stdin in
  let () = print_endline (Json.to_string request) in *)
  let request = Json.parse (input_line stdin) in
  let message = Message.of_yojson request in
  let s = match message with
  | Ok m -> m.program
  | Error m -> ""
  in
  print_endline s *)