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
    username = "Montana1"
  }
  name         = "Duane Kirlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "b731c6d5-241e-4982-9d4f-c03242ccd276"
}