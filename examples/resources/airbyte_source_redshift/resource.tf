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
    username = "Elton_Morissette"
  }
  definition_id = "b974a7d8-001c-4be4-b7da-a2d7b021550a"
  name          = "Jake Ondricka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f01cf56e-e294-4adb-85bd-340789cf0b8d"
}