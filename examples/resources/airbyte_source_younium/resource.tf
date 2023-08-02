resource "airbyte_source_younium" "my_source_younium" {
  configuration = {
    legal_entity = "...my_legal_entity..."
    password     = "...my_password..."
    playground   = false
    source_type  = "younium"
    username     = "Carley.Cole"
  }
  name         = "Catherine Balistreri"
  workspace_id = "80312292-cc61-4c2a-b02b-b97ee102da2d"
}