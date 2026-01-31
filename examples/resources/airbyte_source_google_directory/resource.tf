resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      sign_in_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
  }
  definition_id = "6d56a1a1-2344-4792-8dbf-ef3c86125ff9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "192bea1a-00c3-4227-ba9d-6ca81cd994fc"
}