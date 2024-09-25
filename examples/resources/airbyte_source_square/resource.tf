resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = false
    start_date              = "2022-02-02"
  }
  definition_id = "4ba31afc-75cd-4175-a719-6a7541fa2a79"
  name          = "Rhonda Stehr I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eedefb0b-3778-4954-a670-34f3e4d7496d"
}