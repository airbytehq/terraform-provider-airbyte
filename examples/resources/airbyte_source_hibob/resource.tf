resource "airbyte_source_hibob" "my_source_hibob" {
  configuration = {
    is_sandbox = false
    password   = "...my_password..."
    username   = "Anissa.Boyle17"
  }
  definition_id = "47965850-9500-41aa-95e5-f9cfb0d1e8d3"
  name          = "Forrest Schmitt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0aeed108-7b98-482d-94ce-598cc59eb952"
}