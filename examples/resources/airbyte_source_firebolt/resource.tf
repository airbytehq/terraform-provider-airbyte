resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "61a05c5e-8899-477e-ae08-6e3c2d33082a"
  name          = "Dr. Julian Greenfelder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6112c1fd-a021-40a5-8fbe-c287654f12bc"
}