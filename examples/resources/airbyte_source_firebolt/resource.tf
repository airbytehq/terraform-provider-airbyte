resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "0df143ee-10f8-4279-a427-b2c340e1d4b4"
  name          = "Mr. Carole Predovic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "62aeeab6-a16b-4c0f-9be5-567777324c6c"
}