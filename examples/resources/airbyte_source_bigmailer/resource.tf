resource "airbyte_source_bigmailer" "my_source_bigmailer" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "80cd36f2-93fc-4543-90ae-c4b22a1afe3e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de57a909-2d69-4641-82a2-29f71c3906f9"
}