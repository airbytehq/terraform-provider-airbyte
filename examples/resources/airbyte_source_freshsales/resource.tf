resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "561ce1bb-1cad-4aa0-a328-a3bd5563e04d"
  name          = "Bruce Leannon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75265fdf-f2de-4b8c-bf26-74a92033b17b"
}