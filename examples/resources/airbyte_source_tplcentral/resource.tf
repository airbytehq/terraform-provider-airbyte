resource "airbyte_source_tplcentral" "my_source_tplcentral" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    customer_id   = 10
    facility_id   = 0
    start_date    = "2022-12-10T09:43:55.418Z"
    tpl_key       = "...my_tpl_key..."
    url_base      = "https://alarmed-eternity.org/"
    user_login    = "...my_user_login..."
    user_login_id = 0
  }
  definition_id = "54f6fc04-c76f-4410-91fa-eab9bf28efb7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c851dc20-1f05-44c2-8c5b-447f1d6703f2"
}