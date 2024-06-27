resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "64f99d67-745a-4fb6-9f17-20bd7a7ec191"
  name          = "Irene Huels"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e680e441-7c6f-44b5-89c8-206a4b043ef0"
}