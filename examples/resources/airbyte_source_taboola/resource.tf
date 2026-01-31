resource "airbyte_source_taboola" "my_source_taboola" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
  }
  definition_id = "8b529e49-8b58-4ad0-835a-ef1d004cd9cc"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d1fd6b1-e836-454a-ae4e-19241220c511"
}