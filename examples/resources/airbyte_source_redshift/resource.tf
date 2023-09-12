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
    username    = "Nelda.Jaskolski"
  }
  name         = "Clay Hintz"
  secret_id    = "...my_secret_id..."
  workspace_id = "c18edc7f-787e-432e-84b3-d3ed0c5670ef"
}