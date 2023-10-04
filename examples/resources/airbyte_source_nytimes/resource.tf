resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-08"
    period     = "7"
    share_type = "facebook"
    start_date = "2022-08"
  }
  name         = "Arturo O'Keefe"
  secret_id    = "...my_secret_id..."
  workspace_id = "04a9e0dd-c315-46b2-bfd5-d6c69da5497a"
}