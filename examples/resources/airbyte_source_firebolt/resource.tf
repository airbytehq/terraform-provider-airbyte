resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account       = "...my_account..."
    client_id     = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret = "...my_client_secret..."
    database      = "...my_database..."
    engine        = "...my_engine..."
    host          = "api.app.firebolt.io"
  }
  definition_id = "02e3e601-6546-4635-ada9-b04e26c5d5cf"
  name          = "Elizabeth Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "713464ed-5bf6-4d67-b06c-c548e68cfaef"
}