resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-08"
    period     = 1
    share_type = "facebook"
    start_date = "2022-08"
  }
  definition_id = "ee5f4d07-6d64-436e-89d7-3e6a7be8a54f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "022ba7a1-465f-4932-ba45-6444b9cf5670"
}