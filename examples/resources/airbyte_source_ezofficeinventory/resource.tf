resource "airbyte_source_ezofficeinventory" "my_source_ezofficeinventory" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-05-08T21:19:54.642Z"
    subdomain             = "...my_subdomain..."
  }
  definition_id = "7b6be0f6-4139-42f8-a89e-2ca25560979a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e2ab9a6f-fac5-46cc-a1aa-b2c021ec4246"
}