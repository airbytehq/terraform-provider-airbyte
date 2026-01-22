resource "airbyte_source_docuseal" "my_source_docuseal" {
  configuration = {
    api_key    = "...my_api_key..."
    limit      = "...my_limit..."
    start_date = "2020-02-19T19:26:09.432Z"
  }
  definition_id = "f309b0ef-fb12-4d1e-bd2b-2967a86af2d4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a71252ef-5c18-40f0-8ad5-7d4fa307cce5"
}