resource "airbyte_source_e_conomic" "my_source_economic" {
  configuration = {
    agreement_grant_token = "...my_agreement_grant_token..."
    app_secret_token      = "...my_app_secret_token..."
  }
  definition_id = "f92d57e7-3e87-439c-a7ac-6a4a5d94dddf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4641dc88-9a08-4a19-acf6-1f523ea699aa"
}