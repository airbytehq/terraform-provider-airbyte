resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "red"
    locale      = "pt-BR"
    orientation = "landscape"
    query       = "people"
    size        = "large"
  }
  definition_id = "0da76331-50ac-4fec-a41f-73646e1c8795"
  name          = "Lee Nikolaus"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a8255310-1401-4784-96a4-c1173de2c277"
}