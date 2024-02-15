resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Emelia_Glover12"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "41893e1d-a46c-44f6-85d2-05011b886247"
  name          = "Melody Konopelski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "39108618-e914-445d-83c4-94a849cd517f"
}