resource "airbyte_source_primetric" "my_source_primetric" {
  configuration = {
    client_id     = "1234aBcD5678EFGh9045Neq79sdDlA15082VMYcj"
    client_secret = "...my_client_secret..."
  }
  definition_id = "08260fec-1942-4dca-8ff4-8f5ece6454de"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a347e336-4946-41b8-8b30-8cb4d597c8a5"
}