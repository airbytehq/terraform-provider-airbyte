resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "b0275d35-caa0-41dd-ade8-68b8da32e418"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a13b2755-0e63-4ece-b081-c7f229a01fe4"
}