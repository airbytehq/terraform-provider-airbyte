resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    source_type   = "intercom"
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Darnell Watsica"
  secret_id    = "...my_secret_id..."
  workspace_id = "934152ed-7e25-43f4-8157-deaa7170f445"
}