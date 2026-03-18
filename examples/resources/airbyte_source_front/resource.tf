resource "airbyte_source_front" "my_source_front" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    page_limit            = "50"
    start_date            = "2021-03-09T10:03:43.663Z"
  }
  definition_id = "ae390de9-bdd5-4bfa-9d14-34010b44ca50"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8be9bca5-1753-4d9a-88e9-0ead4ee93908"
}