resource "airbyte_source_asana" "my_source_asana" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      option_title  = "OAuth Credentials"
      refresh_token = "...my_refresh_token..."
    }
    source_type = "asana"
  }
  name         = "Dr. Armando Waelchi"
  workspace_id = "bb89eb75-dad6-436c-a005-03d8bb31180f"
}