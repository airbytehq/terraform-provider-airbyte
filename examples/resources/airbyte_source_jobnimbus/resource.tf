resource "airbyte_source_jobnimbus" "my_source_jobnimbus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a1f1c75f-25b2-4eb1-8d22-5abb6a871d25"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e5736216-cade-458c-9b50-514aa08c4f1e"
}