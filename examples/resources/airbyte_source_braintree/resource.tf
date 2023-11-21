resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Qa"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020-12-30"
  }
  definition_id = "12fcb5a7-fdd8-454e-8c39-c22fe17df57a"
  name          = "Ms. Tommie Bins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ff7f1a2-7e8f-4d2f-993d-4f9ab29a2f83"
}