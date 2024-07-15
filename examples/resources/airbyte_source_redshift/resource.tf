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
    username = "Riley3"
  }
  definition_id = "789cf0b8-d2c0-4412-8436-569fd64cd2bc"
  name          = "Jeffrey Lebsack"
  secret_id     = "...my_secret_id..."
  workspace_id  = "35d7a8c3-86ce-4ccf-ae93-f7f0f8c4b4f8"
}