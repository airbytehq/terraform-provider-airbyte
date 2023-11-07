resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Development"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020"
  }
  name         = "Traci Volkman"
  secret_id    = "...my_secret_id..."
  workspace_id = "2f8e06ef-6fed-4365-9e7d-5496735da213"
}