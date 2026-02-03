resource "airbyte_source_redshift" "my_source_redshift" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5439
    schemas = [
    ]
    username = "...my_username..."
  }
  definition_id = "e25148e3-3c6f-4e5f-88e2-c90d1e9f9593"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "84353b00-31b2-4302-bdea-2a56e10ac383"
}