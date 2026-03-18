resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "sandbox"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020"
  }
  definition_id = "63cea06f-1c75-458d-88fe-ad48c7cb27fd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fa93a3e9-4221-4177-b3aa-d0efe31a255f"
}