resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "12cb01cb-d9fa-4eed-a058-28527913edfc"
  name          = "Virgil Rosenbaum II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8e69d20e-e3e4-4cb5-9c69-5e2f08eb76e3"
}