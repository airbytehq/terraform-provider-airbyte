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
    source_type = "redshift"
    username    = "Abdullah.Oberbrunner"
  }
  name         = "Edward Wolf"
  secret_id    = "...my_secret_id..."
  workspace_id = "7f385189-ad7e-4f80-baae-03f33ca79fb9"
}