resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Qa"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020"
  }
  definition_id = "a7074f01-6f72-4127-b33f-8652b2551b02"
  name          = "Mr. Jana Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4a7ffb26-8dc1-4870-87d3-7ac99fd78516"
}