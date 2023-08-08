resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password    = "...my_password..."
    playground  = true
    region      = "oc"
    source_type = "klarna"
    username    = "Lillian_Williamson56"
  }
  name         = "Catherine Bashirian"
  secret_id    = "...my_secret_id..."
  workspace_id = "3bbf8178-37b0-41af-9d78-8624189eb448"
}