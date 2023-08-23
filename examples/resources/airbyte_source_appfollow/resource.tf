resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret  = "...my_api_secret..."
    source_type = "appfollow"
  }
  name         = "Mrs. Elisa Bogisich"
  secret_id    = "...my_secret_id..."
  workspace_id = "b99545fc-95fa-4889-b0e1-89dbb30fcb33"
}