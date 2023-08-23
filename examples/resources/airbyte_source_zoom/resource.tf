resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    jwt_token   = "...my_jwt_token..."
    source_type = "zoom"
  }
  name         = "Charlene Abbott"
  secret_id    = "...my_secret_id..."
  workspace_id = "f375b442-8282-41fd-b2f6-9e59267c71cc"
}