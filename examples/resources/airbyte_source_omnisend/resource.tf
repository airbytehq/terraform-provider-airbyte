resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e6bd591e-2544-44d2-a34f-d1d8ea1c7d43"
  name          = "Rachel Ankunding"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c9c1a8da-b7e7-43a5-9718-14e4dc1f633a"
}