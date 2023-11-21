resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Bradley96@hotmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "746ac11e-b024-4372-8c2f-a90b3fc58aed"
  name          = "Reginald Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "07de9609-725c-46d5-a5da-35039f4e4098"
}