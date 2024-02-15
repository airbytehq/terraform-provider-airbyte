resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "365d687e-087e-4390-9b6a-417faeb4f73b"
  name          = "Patti Lehner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "371ecbee-1051-41b4-b9ed-171c9d9f9b47"
}