resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Development"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    source_type = "braintree"
    start_date  = "2020-12-30"
  }
  name         = "Henrietta Nienow"
  secret_id    = "...my_secret_id..."
  workspace_id = "4f3b756c-11f6-4c37-a512-6243835bbc05"
}