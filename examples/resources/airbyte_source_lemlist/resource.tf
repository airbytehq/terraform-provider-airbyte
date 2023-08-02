resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "lemlist"
  }
  name         = "Danielle Wunsch DVM"
  workspace_id = "8b084c31-97e1-493a-a454-67f94874c2d5"
}