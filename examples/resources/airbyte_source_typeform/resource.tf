resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-06-26T16:18:42.881Z"
      }
    }
    form_ids = [
      "..."
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "bd0ee776-77dc-42cf-9652-75d60b24ac1b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b21de812-8c61-487c-b7b3-9e15f5256664"
}