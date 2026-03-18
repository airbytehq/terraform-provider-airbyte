resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account               = "...my_account..."
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "bbl9qth066hmxkwyb0hy2iwk8ktez9dz"
    client_secret         = "...my_client_secret..."
    database              = "...my_database..."
    engine                = "...my_engine..."
    host                  = "api.app.firebolt.io"
  }
  definition_id = "6f2ac653-8623-43c4-8950-19218c7caf3d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ae5026b9-8a30-49cd-ba6f-94604c895f14"
}