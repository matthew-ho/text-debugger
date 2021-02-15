let run =
  let end_msg_rec = ({t = "end"} : Protocol.ResponseMessage.t) in
  let end_msg = Json.json_to_string (Protocol.ResponseMessage.to_yojson end_msg_rec) in
  print_endline end_msg

let handle (message : Protocol.Message.t) : unit =
  State.File.open_file message.program;
  run