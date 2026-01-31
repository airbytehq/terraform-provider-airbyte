resource "airbyte_source_cal_com" "my_source_calcom" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    org_id                = "...my_org_id..."
  }
  definition_id = "2be646d0-4389-43e7-b1ce-01f88ddc6fc3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1ff3eddb-04d9-42bf-a54d-97ed7f91876c"
}