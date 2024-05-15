resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "us"
    username   = "Stone43"
  }
  definition_id = "1af8b9bb-4850-4d65-8be1-e785de7e327e"
  name          = "Georgia Ledner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "126eb569-4431-42d5-95e6-a2d83c0cc98d"
}