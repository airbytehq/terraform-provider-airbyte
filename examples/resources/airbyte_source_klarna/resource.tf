resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password    = "...my_password..."
    playground  = true
    region      = "us"
    source_type = "klarna"
    username    = "Chase50"
  }
  name         = "Caleb Rau"
  secret_id    = "...my_secret_id..."
  workspace_id = "873f5033-f19d-4bf1-a5ce-4152eab9cd7e"
}