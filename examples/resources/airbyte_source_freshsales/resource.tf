resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "4bae6111-2211-43e8-bb49-0ecc6bf75161"
  name          = "Beth Windler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "03c8311a-97a1-4ae8-9496-29432a02ceac"
}