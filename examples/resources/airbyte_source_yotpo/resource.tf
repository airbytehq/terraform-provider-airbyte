resource "airbyte_source_yotpo" "my_source_yotpo" {
  configuration = {
    access_token = "...my_access_token..."
    app_key      = "...my_app_key..."
    email        = "Lacy.Steuber@yahoo.com"
    source_type  = "yotpo"
    start_date   = "2022-03-01T00:00:00.000Z"
  }
  name         = "Kay Smith"
  secret_id    = "...my_secretId..."
  workspace_id = "e1522975-10da-4803-9229-2cc61c2a702b"
}