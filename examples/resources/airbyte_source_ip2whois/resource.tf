resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain                = "www.google.com"
  }
  definition_id = "f23b7b7c-d705-49a3-9042-09add3b104a5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "56bae1c6-f099-43b9-9370-ca3d497ec2b1"
}