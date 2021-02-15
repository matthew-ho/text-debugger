let rec loop () =
  (* TODO: Catch errors *)
  let request = Json.parse (input_line stdin) in
  let response = Json.parse (input_line stdin) in
  let request_msg = Protocol.Message.of_yojson request in
  let () =
  match request_msg with
  | Ok m -> MessageHandler.handle m
  | Error m -> ()
  in
  let () = print_endline (Json.json_to_string response) in
  loop ()

let start () = loop ()