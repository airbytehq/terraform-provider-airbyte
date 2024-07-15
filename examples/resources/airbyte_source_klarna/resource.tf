resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "oc"
    username   = "Ben_Greenholt"
  }
  definition_id = "3b04e32d-c649-4b6b-88e2-c7d0de0f8a2b"
  name          = "Tanya Padberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e20e7511-1fd0-4612-bfd3-df11978b3859"
}