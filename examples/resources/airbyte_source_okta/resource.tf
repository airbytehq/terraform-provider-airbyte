resource "airbyte_source_okta" "my_source_okta" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      o_auth20 = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    domain     = "...my_domain..."
    start_date = "2022-07-22T00:00:00Z"
  }
  definition_id = "f46be10c-3a25-4f20-8c74-e833e35185fb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "15c302ad-971c-4ec5-bc30-ff0c2e400f51"
}