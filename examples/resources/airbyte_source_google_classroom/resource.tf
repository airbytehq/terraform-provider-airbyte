resource "airbyte_source_google_classroom" "my_source_googleclassroom" {
  configuration = {
    client_id            = "...my_client_id..."
    client_refresh_token = "...my_client_refresh_token..."
    client_secret        = "...my_client_secret..."
  }
  definition_id = "7fa04daa-00f3-41df-b573-51f1a05d041c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1580891e-7700-48d1-be24-68d0de647c9d"
}