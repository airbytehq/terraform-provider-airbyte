resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "04de287b-7526-45fd-bf2d-eb8cbf2674a9"
  name          = "Mary Fay"
  secret_id     = "...my_secret_id..."
  workspace_id  = "17bfcc52-6af1-40da-801f-b0fc52730b39"
}