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
    username = "Ralph52"
  }
  definition_id = "a635d7a8-c386-4cec-8fae-93f7f0f8c4b4"
  name          = "Ivan Stanton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6833e1f3-303a-4b04-9c89-1fe9c8dcb6cc"
}