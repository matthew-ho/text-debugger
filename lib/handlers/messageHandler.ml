let handle (message : Message.t) : unit =
  State.File.open_file message.program