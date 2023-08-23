resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Qa"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    source_type = "braintree"
    start_date  = "2020-11-22 20:20:05"
  }
  name         = "Olga Hermiston"
  secret_id    = "...my_secret_id..."
  workspace_id = "ec42defc-ce8f-4197-b773-e63562a7b408"
}