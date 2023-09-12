resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "emailoctopus"
  }
  name         = "Gregory Satterfield"
  secret_id    = "...my_secret_id..."
  workspace_id = "bdb6eec7-4378-4ba2-9317-747dc915ad2c"
}