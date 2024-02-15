resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "f1707475-e2d6-4a49-b80b-a1d6a28c6eef"
  name          = "Dustin Medhurst"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2db22407-ce31-40da-b633-150acfec241f"
}