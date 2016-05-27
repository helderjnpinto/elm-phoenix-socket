module Phoenix.Push.Update exposing (onError)

import Phoenix.Push.Model exposing (Model)
import Json.Encode as JE

withPayload : JE.Value -> Model msg -> Model msg
withPayload payload push =
  { push | payload = payload }

onError : (JE.Value -> msg) -> Model msg -> Model msg
onError valueToMsg push =
  { push | onError = Just valueToMsg }