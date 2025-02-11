resource "airbyte_source_shipstation" "my_source_shipstation" {
  configuration = {
    password = "...my_password..."
    username = "...my_username..."
  }
  definition_id = "0fb52425-3ea1-4c8f-861a-1cb4de22ac5b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2ec53cca-e126-47f7-a926-d07eff1df220"
}