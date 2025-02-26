resource "airbyte_source_younium" "my_source_younium" {
  configuration = {
    legal_entity = "...my_legal_entity..."
    password     = "...my_password..."
    playground   = true
    username     = "...my_username..."
  }
  definition_id = "40006b33-a27b-4ad2-aac2-abf68944c4ad"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3503557e-5e47-4663-a697-c9ab27742dba"
}