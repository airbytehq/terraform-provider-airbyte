resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "6fce7bdd-581a-4c64-8787-6fcad615bcac"
  name          = "Shane Lebsack"
  secret_id     = "...my_secret_id..."
  workspace_id  = "33710669-86a7-4b02-bd25-c7727b363542"
}