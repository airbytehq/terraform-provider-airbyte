resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "eu"
    username   = "Chelsie.Heaney"
  }
  definition_id = "139361b0-4889-426a-b9cf-e2e85afcc9ac"
  name          = "Elmer Torp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "95c9a7c9-f197-4511-9624-796585095001"
}