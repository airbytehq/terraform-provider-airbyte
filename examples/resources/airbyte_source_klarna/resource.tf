resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = false
    region     = "us"
    username   = "Dock.Muller2"
  }
  definition_id = "ea69f1b1-a975-4dd1-b5a0-295b197bbb02"
  name          = "Stella Schuster"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c3155f7-31c6-4e6b-81ca-f166aee78925"
}