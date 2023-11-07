resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Justyn.Johnson@hotmail.com"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  name         = "Dr. April Sanford"
  secret_id    = "...my_secret_id..."
  workspace_id = "1ce49a8f-c7f8-4e24-a726-45cfb2449eef"
}