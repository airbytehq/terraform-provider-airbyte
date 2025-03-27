resource "airbyte_source_trustpilot" "my_source_trustpilot" {
  configuration = {
    business_units = [
      "..."
    ]
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-01-15T05:49:01.644Z"
      }
    }
    start_date = "%Y-%m-%dT%H:%M:%SZ"
  }
  definition_id = "581c2bce-fff6-4e03-8eb1-8a082e29e93b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "89025dc4-af49-4123-85ae-315d50718f82"
}