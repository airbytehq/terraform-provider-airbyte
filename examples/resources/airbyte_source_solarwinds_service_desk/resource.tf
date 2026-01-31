resource "airbyte_source_solarwinds_service_desk" "my_source_solarwindsservicedesk" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key_2             = "...my_api_key_2..."
    start_date            = "2022-03-08T18:23:30.220Z"
  }
  definition_id = "a7c7e298-b9ec-4720-9285-2764fac65539"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2094acf-6490-42e7-8498-60dcb5619338"
}