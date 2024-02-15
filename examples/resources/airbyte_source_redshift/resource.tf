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
    username = "Laury_Towne"
  }
  definition_id = "bace4005-a630-4727-ac58-b5da21f73986"
  name          = "Ron Block"
  secret_id     = "...my_secret_id..."
  workspace_id  = "92c2b810-56bc-4977-a3bf-4dff8dd835d8"
}