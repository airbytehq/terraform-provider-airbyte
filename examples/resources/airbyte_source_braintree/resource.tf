resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Qa"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020-12-30"
  }
  definition_id = "a19738b2-18b7-4049-8da2-1b79cfd9baf3"
  name          = "Bobby Brown"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b7264dad-9e5f-4b53-9266-91bfb5db9ea2"
}