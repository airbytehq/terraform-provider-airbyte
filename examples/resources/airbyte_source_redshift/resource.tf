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
    username = "Lupe.Fritsch49"
  }
  definition_id = "eb205ddb-7f1b-4711-95e0-7e103643a6df"
  name          = "Eugene Parker Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "25b2ac62-eb10-4f1a-8d51-fb8be0416cb4"
}