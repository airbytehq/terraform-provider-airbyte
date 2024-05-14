resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "0cbc1b99-ee1e-4960-9660-5b0d51b3114e"
    options = "...my_options..."
  }
  definition_id = "9ed57541-c361-42b0-a8c8-cf11a0d25994"
  name          = "Muriel Wunsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a9e475a-bffb-4a2c-9e7b-6908ecd761f1"
}