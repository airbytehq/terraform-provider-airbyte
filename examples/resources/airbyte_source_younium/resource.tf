resource "airbyte_source_younium" "my_source_younium" {
  configuration = {
    legal_entity = "...my_legal_entity..."
    password     = "...my_password..."
    playground   = true
    source_type  = "younium"
    username     = "Kimberly_Kuhlman9"
  }
  name         = "Bonnie Steuber"
  secret_id    = "...my_secret_id..."
  workspace_id = "de35f8e0-1bf3-43ea-ab45-402ac1704bf1"
}