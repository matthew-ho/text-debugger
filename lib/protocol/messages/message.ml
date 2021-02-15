type t = {
  request : string;
  program : string;
  stopOnEntry : (bool [@default false]);
}
[@@deriving yojson]

(* type t =
 | Launch of launch *)


(* let of_yojson (json : Json.json) : t =
  json ||> fun m -> (Launch m) *)
