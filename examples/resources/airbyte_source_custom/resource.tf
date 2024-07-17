resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "1ba6f5d9-0d5a-48a3-89e2-072bdff3818d"
  name          = "Dr. Rogelio Harris"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b32a7817-3abb-482e-aa71-89e9256d7463"
}