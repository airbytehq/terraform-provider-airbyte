resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password    = "...my_password..."
    playground  = false
    region      = "oc"
    source_type = "klarna"
    username    = "Tristin47"
  }
  name         = "Jacob Krajcik Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "afdd7886-2418-49eb-8487-3f5033f19dbf"
}