resource "airbyte_source_custom" "my_source_custom" {
  configuration = { "user" : "charles" }
  definition_id = "d84c3fbc-24f8-460f-8e85-198c116e7265"
  name          = "Jerry Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "770fa8ec-1ba8-404b-9645-7a40e8851a35"
}