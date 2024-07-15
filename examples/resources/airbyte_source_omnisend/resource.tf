resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "17c9c1c9-1886-4190-8dfc-35041fcdcac2"
  name          = "Andrea Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f24d9236-9b1f-4f5a-bba2-88f10a0635ff"
}