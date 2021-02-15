type t = {
  t : string [@key "type"];
  name : string;
  request : string;
  program : string;
  stopOnEntry : (bool [@default false]);
  __sessionId: string
}
[@@deriving yojson]

(* type t =
 | Launch of launch *)


(* let of_yojson (json : Json.json) : t =
  json ||> fun m -> (Launch m) *)
