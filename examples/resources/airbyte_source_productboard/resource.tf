resource "airbyte_source_productboard" "my_source_productboard" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2022-05-10T04:03:20.147Z"
  }
  definition_id = "c7ab8353-f602-40ae-ba57-f064cc652326"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "219c1e49-967a-4f0d-9c3c-d03519513a67"
}