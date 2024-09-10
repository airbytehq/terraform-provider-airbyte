resource "airbyte_source_goldcast" "my_source_goldcast" {
  configuration = {
    access_key = "...my_access_key..."
  }
  definition_id = "235e52bb-8adc-48fd-aa7f-940dec44e216"
  name          = "Moses Wolf"
  secret_id     = "...my_secret_id..."
  workspace_id  = "29e4d23a-00b4-494f-bd68-d64a810b2959"
}