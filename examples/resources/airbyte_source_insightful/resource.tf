resource "airbyte_source_insightful" "my_source_insightful" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "2021-11-29T08:45:18.026Z"
  }
  definition_id = "f84a6006-3d0b-4f14-915b-e5c6b6fbe032"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b389c799-c131-4e67-8f3e-b0b76b23c105"
}