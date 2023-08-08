resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id          = "19ea83d4-92ed-414b-8a2c-1954545e955d"
    options     = "...my_options..."
    source_type = "spacex-api"
  }
  name         = "Noel Borer"
  secret_id    = "...my_secret_id..."
  workspace_id = "ea4901c7-c43a-4d2d-aa78-4aba3d230edf"
}