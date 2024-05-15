resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 1
    start_date = "YYYY-MM-DD"
  }
  definition_id = "e8dc371e-cbee-4105-91b4-39ed171c9d9f"
  name          = "Bennie Grimes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3ac232bf-a41c-480b-a334-5c949a95559f"
}