resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "5bd5b511-2966-4924-8de8-b867ddcc8cc1"
    options = "...my_options..."
  }
  definition_id = "e1eaa5cf-c4c8-40fc-904e-13748425fe8e"
  name          = "Cesar Ondricka III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0ba9a257-9b42-44a0-9692-2966de033119"
}