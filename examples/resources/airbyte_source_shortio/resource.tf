resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "d44fb976-10a4-4d0d-a91e-aa4a70c9cb87"
  name          = "Olive Rippin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "050c39e7-4506-457b-bd1c-b4db2aae6c20"
}