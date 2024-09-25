resource "airbyte_source_savvycal" "my_source_savvycal" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "083ea280-df18-404a-a7b9-f3e581495129"
  name          = "Marcia Schmidt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8696756f-e058-4810-a2b8-ad45dc078875"
}