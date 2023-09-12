resource "airbyte_source_younium" "my_source_younium" {
  configuration = {
    legal_entity = "...my_legal_entity..."
    password     = "...my_password..."
    playground   = true
    source_type  = "younium"
    username     = "Jairo.Monahan79"
  }
  name         = "Martha Orn"
  secret_id    = "...my_secret_id..."
  workspace_id = "1becb83d-2378-4ae3-bfc2-3d9450a986a4"
}