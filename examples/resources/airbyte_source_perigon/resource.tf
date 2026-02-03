resource "airbyte_source_perigon" "my_source_perigon" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-02-19T11:11:11.078Z"
  }
  definition_id = "4bd1c661-d0a4-4315-956e-4583774487af"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "12b37d85-54ea-4ab5-b1d0-9a170263fba4"
}