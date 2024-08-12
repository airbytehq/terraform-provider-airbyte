resource "airbyte_source_braintree" "my_source_braintree" {
  configuration = {
    environment = "Development"
    merchant_id = "...my_merchant_id..."
    private_key = "...my_private_key..."
    public_key  = "...my_public_key..."
    start_date  = "2020"
  }
  definition_id = "430f8964-a321-4f43-9fb3-aad078a3612f"
  name          = "Abraham Herzog"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fdd854e0-c39c-422f-a17d-f57adf10725f"
}