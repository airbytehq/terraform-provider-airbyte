resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "1bb0550b-4e34-4412-ae7f-29336e237818"
  name          = "Samuel Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3da8d6ee-f047-4576-b0dd-bc2dbf188dfa"
}