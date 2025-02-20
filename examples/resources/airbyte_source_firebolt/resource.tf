resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "4426f4ef-7b69-41d7-938f-7589844b7911"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ae5026b9-8a30-49cd-ba6f-94604c895f14"
}