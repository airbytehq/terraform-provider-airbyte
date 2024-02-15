resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "fe1ba68d-3405-402b-9602-9febd39e6abf"
  name          = "Maureen Roob"
  secret_id     = "...my_secret_id..."
  workspace_id  = "50cb6e6f-f332-4bdf-9457-75fcbb81a746"
}