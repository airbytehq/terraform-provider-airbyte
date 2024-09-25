resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "b82b3c16-4c19-450d-a31e-becd9b5a75a7"
  name          = "Maurice Wiza"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d722b31-0b67-46fb-b31c-6d5241e9821d"
}