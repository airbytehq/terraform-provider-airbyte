resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Leta.Jakubowski@hotmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "7de96097-25c6-4d5a-9da3-5039f4e4098b"
  name          = "Morris Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "23b3c013-4621-4866-8f51-8dbd5ebee014"
}