resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
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
  definition_id = "cb22d725-edac-48cf-960b-7a9061de3d71"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "707c7d95-d41e-41eb-818e-3cf0601dca20"
}