resource "airbyte_source_apple_search_ads" "my_source_applesearchads" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    end_date      = "2021-01-01"
    org_id        = 0
    start_date    = "2020-01-01"
  }
  definition_id = "f6eb56d1-0915-427d-b110-58bf43673ee3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "87d57ac5-8ac6-43ff-882e-85cc9f51f076"
}