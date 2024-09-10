resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "82b3c164-c195-40da-b1eb-ecd9b5a75a7c"
  name          = "Shari Rutherford PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "722b310b-676f-4b73-9c6d-5241e9821d4f"
}