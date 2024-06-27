resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "4e758ac0-9227-4119-b95b-60c98bb7037a"
  name          = "Floyd Hermann DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e1bb1cad-aa0e-4328-a3bd-5563e04de287"
}