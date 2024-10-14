resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "...my_email..."
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "7c615c17-037c-45b4-a857-c36383251a5e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "16330ccf-550e-4932-a4be-813b6ca6d890"
}