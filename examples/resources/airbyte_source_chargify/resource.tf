resource "airbyte_source_chargify" "my_source_chargify" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain                = "...my_domain..."
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "f7b3556d-7ab4-4c3f-bec5-4d27fae11df4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c11a1f55-b1e6-4905-9ad3-ecb941185a69"
}