resource "airbyte_source_hibob" "my_source_hibob" {
  configuration = {
    is_sandbox = false
    password   = "...my_password..."
    username   = "...my_username..."
  }
  definition_id = "37fef60a-82ec-4619-82fd-52b97f17ff64"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fad87a38-16bf-4b23-be0b-8a294896c8f0"
}