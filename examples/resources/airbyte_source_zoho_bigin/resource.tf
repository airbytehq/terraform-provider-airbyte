resource "airbyte_source_zoho_bigin" "my_source_zohobigin" {
  configuration = {
    client_id            = "...my_client_id..."
    client_refresh_token = "...my_client_refresh_token..."
    client_secret        = "...my_client_secret..."
    data_center          = "com"
    module_name          = "...my_module_name..."
  }
  definition_id = "59bc2da0-0bbf-4ae2-ad4e-256d27313bbf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "810238c0-f7ad-475c-a093-f1a5f05c3712"
}