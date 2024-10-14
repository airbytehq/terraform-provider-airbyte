resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "sandbox"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020"
  }
  definition_id = "45165108-38ff-4788-bf09-a5b89ef2a39b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fa93a3e9-4221-4177-b3aa-d0efe31a255f"
}