resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Santiago_Von2@hotmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "77895426-7034-4f3e-8d74-96d90ab23438"
  name          = "Walter Wintheiser"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9697c812-8b04-429b-90eb-a2d38220deac"
}