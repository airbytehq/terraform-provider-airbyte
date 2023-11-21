resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "09ea5800-594f-4bd8-a631-4cace02f96b8"
  name          = "Annie Hegmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f7e4181b-36cf-41af-8f94-e3c79cbeca1c"
}