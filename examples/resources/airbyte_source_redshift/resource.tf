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
    username = "Garnett44"
  }
  definition_id = "529a15c3-6062-4a63-b571-6d2b265f2af5"
  name          = "Faith Schmidt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bdd581ac-6487-4876-bcad-615bcace687b"
}