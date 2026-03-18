resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    board_ids = [
      9
    ]
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
    num_workers = 1
  }
  definition_id = "80a54ea2-9959-4040-aac1-eee42423ec9b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "707c7d95-d41e-41eb-818e-3cf0601dca20"
}