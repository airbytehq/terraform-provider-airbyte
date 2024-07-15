resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "813582a6-f537-4d9d-bc7f-458565e7155c"
    options = "...my_options..."
  }
  definition_id = "9f06b548-2c9e-4b77-803d-0337f10a6436"
  name          = "Conrad Glover"
  secret_id     = "...my_secret_id..."
  workspace_id  = "32ccb4d5-2da6-4128-b243-6a122e3949c8"
}