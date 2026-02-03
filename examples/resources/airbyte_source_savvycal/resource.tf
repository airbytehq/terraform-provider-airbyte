resource "airbyte_source_savvycal" "my_source_savvycal" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "70a0218e-2a08-4de1-b2b8-19d92b33bb91"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ff906acd-556e-48b6-a29c-e8ac167fbc7e"
}