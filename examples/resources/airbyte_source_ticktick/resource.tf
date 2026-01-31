resource "airbyte_source_ticktick" "my_source_ticktick" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    authorization = {
      bearer_token_from_oauth2 = {
        bearer_token = "...my_bearer_token..."
      }
    }
  }
  definition_id = "81ecd39b-6cd7-4151-a270-592acd9102f5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c98ea6fc-4c81-4bae-a219-bdb1e963a5c0"
}