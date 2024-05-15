resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 1
  }
  definition_id = "cccad3b1-c406-4529-b193-648ca783b586"
  name          = "Lori Douglas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bdb821f9-c8ef-4a40-9c20-7c50e6f1211e"
}