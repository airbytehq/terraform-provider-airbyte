resource "airbyte_source_redshift" "my_source_redshift" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5439
    schemas = [
      "...",
    ]
    username = "Fredy87"
  }
  definition_id = "34f0cce5-486a-43a1-a1dc-53f64148acb8"
  name          = "Frederick Bergstrom"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bf94a013-97d3-4dfd-90af-f660497cb974"
}