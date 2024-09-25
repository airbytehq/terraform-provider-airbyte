resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Ismael_Bruen@gmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "e8dd3803-417f-4b9b-870c-02d1bcbbed9b"
  name          = "Myra Romaguera II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7eb1ca59-8630-42b5-876a-985642b25e45"
}