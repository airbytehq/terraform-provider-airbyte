resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id          = "8f532d89-2cf7-4812-8b51-2c878240bf54"
    options     = "...my_options..."
    source_type = "spacex-api"
  }
  name         = "Randal Lockman"
  secret_id    = "...my_secret_id..."
  workspace_id = "8f1bf0bc-8e1f-4206-95d8-31d0081090f6"
}