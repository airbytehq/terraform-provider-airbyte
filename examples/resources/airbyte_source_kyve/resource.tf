resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages   = 10
    page_size   = 4
    pool_ids    = "0"
    source_type = "kyve"
    start_ids   = "0,0"
    url_base    = "https://api.beta.kyve.network/"
  }
  name         = "William Larson"
  secret_id    = "...my_secret_id..."
  workspace_id = "3197e193-a245-4467-b948-74c2d5cc4972"
}