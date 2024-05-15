resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "1851-01"
    period     = "30"
    share_type = "facebook"
    start_date = "2022-08"
  }
  definition_id = "83b2c4dd-4d42-4907-b41e-e0bbab0457d9"
  name          = "Sue Durgan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e6ecd841-e72a-4766-a686-faa512d8044b"
}