resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "71a56d06-8f4b-45e4-8195-96433e1d5148"
  name          = "Jodi Nitzsche"
  secret_id     = "...my_secret_id..."
  workspace_id  = "86d05524-4c54-465b-857a-2c2618fe1b91"
}