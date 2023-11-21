resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "adad73b7-9d20-4b48-acfd-c6fb504a12b7"
    options = "...my_options..."
  }
  definition_id = "723cbf02-23ae-4822-a532-7d8cbc0547dc"
  name          = "Chad Swaniawski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7628c478-1358-42a6-b537-d9dfc7f45856"
}