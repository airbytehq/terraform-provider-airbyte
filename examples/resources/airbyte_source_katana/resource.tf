resource "airbyte_source_katana" "my_source_katana" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2020-06-02T04:39:08.842Z"
  }
  definition_id = "e7e43413-3c27-41a7-8cde-32a99a10a016"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "80e4bd04-0334-4bec-94b6-4768d4f711a2"
}