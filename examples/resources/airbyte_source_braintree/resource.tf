resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Qa"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020-12-30"
  }
  definition_id = "686308ea-db73-4c36-9be0-c12ece59b9fb"
  name          = "Cornelius Weissnat"
  secret_id     = "...my_secret_id..."
  workspace_id  = "47490588-d0e2-4939-974a-681eea74b87a"
}