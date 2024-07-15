resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "a7fcdac6-3878-454b-a9c4-2e8b9a534c06"
  name          = "Merle Hills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e94eff21-1adf-4c72-9dd1-f80239a92966"
}