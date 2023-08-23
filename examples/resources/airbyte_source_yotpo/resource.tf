resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Petra66@gmail.com"
    source_type  = "yotpo"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  name         = "Hannah Volkman"
  secret_id    = "...my_secret_id..."
  workspace_id = "83d2378a-e3bf-4c23-9945-0a986a495bac"
}