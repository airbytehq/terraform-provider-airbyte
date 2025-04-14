resource "airbyte_source_aviationstack" "my_source_aviationstack" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-04-29T22:54:08.686Z"
  }
  definition_id = "5ac15ff7-7e34-4d7e-9e13-3eecb15f437b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "34226103-ad47-4dca-939e-56586e6a846e"
}