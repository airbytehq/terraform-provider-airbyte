resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "pt-BR"
    orientation = "landscape"
    query       = "people"
    size        = "small"
  }
  definition_id = "f68e00dc-dadd-4479-a116-8b4fa7262d2a"
  name          = "Brandy Weimann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6dd11df0-9849-4375-b622-7890d41f1391"
}