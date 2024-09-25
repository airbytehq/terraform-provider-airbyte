resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "cf1a4306-e082-4909-997b-fabbad3671a9"
  name          = "Shaun Bosco"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c174fee4-1455-462d-a757-6235e52bb8ad"
}