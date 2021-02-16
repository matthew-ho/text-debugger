let rec run () =
  if State.File.has_ended () then
    let end_msg_rec = ({command = "end"} : Protocol.ResponseMessage.t) in
    let end_msg = Json.json_to_string (Protocol.ResponseMessage.to_yojson end_msg_rec) in
    print_endline end_msg
  else if State.File.has_hit_exception () then
    let exception_msg_rec = ({command = "stopOnException"} : Protocol.ResponseMessage.t) in
    let exception_msg = Json.json_to_string (Protocol.ResponseMessage.to_yojson exception_msg_rec) in
    print_endline exception_msg
  else
    let () = State.File.next_line () in
    run ()

let handle (message : Protocol.Message.t) : unit =
  State.File.open_file message.program;
  run ()