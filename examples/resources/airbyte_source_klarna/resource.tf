resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "eu"
    username   = "Orland.Schmeler"
  }
  definition_id = "e76e9fde-f541-4f06-8a13-b1e89c1488fa"
  name          = "Dr. Randall Casper"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d922269c-9d64-48f0-bccd-d2e95af6ed3c"
}