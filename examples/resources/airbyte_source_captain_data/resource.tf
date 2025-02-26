resource "airbyte_source_captain_data" "my_source_captaindata" {
  configuration = {
    api_key     = "...my_api_key..."
    project_uid = "...my_project_uid..."
  }
  definition_id = "d9078dcd-13c0-49d0-83bf-a23cfa23eb88"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c611aebf-e665-42bc-9463-ce17b149e9a5"
}