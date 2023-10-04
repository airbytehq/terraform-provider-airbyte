resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = false
    region     = "eu"
    username   = "Elwyn21"
  }
  name         = "Edward Boyer"
  secret_id    = "...my_secret_id..."
  workspace_id = "f446900c-8feb-4a7b-85cf-ea08abdda328"
}