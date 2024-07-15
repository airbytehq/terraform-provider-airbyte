resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "55dc9d09-7882-4142-b992-f65a7105f2e5"
  name          = "Deborah Nader"
  secret_id     = "...my_secret_id..."
  workspace_id  = "72ede129-9d48-4414-90fd-6e7ec48816b0"
}