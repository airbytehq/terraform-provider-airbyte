resource "airbyte_source_ezofficeinventory" "my_source_ezofficeinventory" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-05-08T21:19:54.642Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "6d074250-3a64-413a-bd66-a6849e0d10ee"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e2ab9a6f-fac5-46cc-a1aa-b2c021ec4246"
}