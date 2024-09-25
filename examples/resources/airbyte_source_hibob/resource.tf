resource "airbyte_source_hibob" "my_source_hibob" {
  configuration = {
    is_sandbox = false
    password   = "...my_password..."
    username   = "Richard_Jerde72"
  }
  definition_id = "8b49c82f-283f-4df1-b362-a3ef9cacc879"
  name          = "Matt Kuhic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "01647dc7-c271-4c50-84a2-5a4f7e4eabe3"
}