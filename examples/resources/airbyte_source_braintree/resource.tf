resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Production"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020"
  }
  definition_id = "a849cd51-7f0e-432c-ae30-2e6de92b3e43"
  name          = "Daisy MacGyver"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f9835e6-422d-415b-8286-21a877d2e625"
}