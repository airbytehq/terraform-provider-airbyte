resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 1
  }
  definition_id = "0c173d4d-6113-43dd-b2a9-5937ced0062e"
  name          = "Shelia Hettinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e78152c-bd26-46e4-812d-05e7f58d4a06"
}