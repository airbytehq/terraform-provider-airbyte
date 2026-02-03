resource "airbyte_source_pardot" "my_source_pardot" {
  configuration = {
    additional_properties   = "{ \"see\": \"documentation\" }"
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    is_sandbox              = true
    pardot_business_unit_id = "...my_pardot_business_unit_id..."
    refresh_token           = "...my_refresh_token..."
    start_date              = "2021-07-25T00:00:00Z"
    v5_page_size            = 0
  }
  definition_id = "762e3001-6edb-4979-8bc5-5c4d9f862232"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5e8c4ce-fc79-41ce-a312-1e9b3d367285"
}