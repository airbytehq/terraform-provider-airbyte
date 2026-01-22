resource "airbyte_source_circa" "my_source_circa" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-05-12T17:53:38.906Z"
  }
  definition_id = "81378c9f-0492-4395-bfe7-a015c8730423"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a846aec7-b771-4801-90d1-d9d35b17512d"
}