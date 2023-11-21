resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30 04:50:23"
  }
  definition_id = "b8f8f6af-bf36-45d6-87e0-87e3905b6a41"
  name          = "Elsa Osinski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f73b7e8-dc37-41ec-bee1-0511b439ed17"
}