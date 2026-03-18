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
  definition_id = "e87ffa8e-a3b5-f69c-9076-6011339de1f6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "84353b00-31b2-4302-bdea-2a56e10ac383"
}