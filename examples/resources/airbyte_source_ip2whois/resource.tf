resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain                = "www.google.com"
  }
  definition_id = "a9ade1a0-a3b3-4b7c-a67f-1f4b3c936361"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "56bae1c6-f099-43b9-9370-ca3d497ec2b1"
}