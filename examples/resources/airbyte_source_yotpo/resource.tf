resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Louvenia9@yahoo.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "0243724c-2fa9-40b3-bc58-aed9663e07de"
  name          = "Chester Armstrong"
  secret_id     = "...my_secret_id..."
  workspace_id  = "25c6d5a5-da35-4039-b4e4-098bb8c2a23b"
}