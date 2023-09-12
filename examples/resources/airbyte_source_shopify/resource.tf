resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      source_shopify_shopify_authorization_method_api_password = {
        api_password = "...my_api_password..."
        auth_method  = "api_password"
      }
    }
    shop        = "my-store"
    source_type = "shopify"
    start_date  = "2022-01-02"
  }
  name         = "Randal Kris"
  secret_id    = "...my_secret_id..."
  workspace_id = "df54fdd5-ea95-4433-98da-fb42a8d63388"
}