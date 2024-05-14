resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "6321f6b4-ca64-472a-9f8a-ec8fedb8fc35"
  name          = "Vanessa Kuhlman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ee523e36-b74e-48f7-b837-d76b02a3d797"
}