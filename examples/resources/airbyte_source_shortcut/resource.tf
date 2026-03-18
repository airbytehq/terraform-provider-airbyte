resource "airbyte_source_shortcut" "my_source_shortcut" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key_2             = "...my_api_key_2..."
    query                 = "title:Our first Epic"
    start_date            = "2021-11-07T00:57:38.334Z"
  }
  definition_id = "72b4b6ad-bf46-4113-a97e-c8e2666f7230"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a257dfe4-366d-461b-b1e2-8bb8f32160e7"
}