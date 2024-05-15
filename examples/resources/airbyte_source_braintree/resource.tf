resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Qa"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020-12-30"
  }
  definition_id = "472f2e8b-bfe1-4822-ba33-308df445f49b"
  name          = "Chester Dach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f17b5c6-1c8d-42f7-9d6e-e9c7e7401902"
}