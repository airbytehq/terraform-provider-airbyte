resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "700ba64d-af2c-4d7c-8fe5-757a306443a7"
  name          = "Flora Ruecker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e2e1378d-b01d-476f-bdd2-7aa6e51f0c20"
}