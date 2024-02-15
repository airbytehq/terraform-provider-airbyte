resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Enrique.Dickinson34@hotmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "b8b1e39d-437b-4e8f-8cf7-97fa8ae012be"
  name          = "Lynn D'Amore"
  secret_id     = "...my_secret_id..."
  workspace_id  = "99641ef6-30f5-4d87-b9c0-e34b352ddb04"
}