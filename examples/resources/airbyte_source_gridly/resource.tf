resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "2da80f2b-fa49-4853-a695-0935ad536c50"
  name          = "Megan Kshlerin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e30b46b9-59e4-4e75-8ac0-9227119b95b6"
}