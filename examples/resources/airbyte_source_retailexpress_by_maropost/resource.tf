resource "airbyte_source_retailexpress_by_maropost" "my_source_retailexpressbymaropost" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-04-13T05:50:20.412Z"
  }
  definition_id = "c30323bf-3230-4b2b-9712-3a2cfca3cad1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d6e189db-00dc-4122-ae29-da6bafef8d2c"
}