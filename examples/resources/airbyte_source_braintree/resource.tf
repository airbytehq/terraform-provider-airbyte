resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Production"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    source_type = "braintree"
    start_date  = "2020-11-22 20:20:05"
  }
  name         = "Molly Beier"
  secret_id    = "...my_secret_id..."
  workspace_id = "2169e510-019c-46dc-9e34-762799bfbbe6"
}