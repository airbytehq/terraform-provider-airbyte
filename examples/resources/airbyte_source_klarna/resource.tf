resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password    = "...my_password..."
    playground  = false
    region      = "us"
    source_type = "klarna"
    username    = "Reina.Dooley"
  }
  name         = "Earl Schoen"
  workspace_id = "c631b99e-26ce-4d8f-9fdb-9410f63bbf81"
}