resource "airbyte_source_younium" "my_source_younium" {
  configuration = {
    legal_entity = "...my_legal_entity..."
    password     = "...my_password..."
    playground   = false
    source_type  = "younium"
    username     = "Angeline.Kunze40"
  }
  name         = "Ernest Larkin"
  secret_id    = "...my_secret_id..."
  workspace_id = "c8649238-6f62-4c96-9c4c-c6b78890a3fd"
}