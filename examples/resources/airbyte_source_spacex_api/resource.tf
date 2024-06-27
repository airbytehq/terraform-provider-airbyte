resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "5c9f06b5-482c-49eb-b700-3d0337f10a64"
    options = "...my_options..."
  }
  definition_id = "369e4ee3-2ccb-44d5-ada6-128f2436a122"
  name          = "Travis McCullough"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8198a6b-f6f1-4cbd-b35a-96cd0e48f1e4"
}