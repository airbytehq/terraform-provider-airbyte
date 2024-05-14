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
    username = "Caleigh91"
  }
  definition_id = "1fcb26b9-0cc0-4df9-8191-9892a209c167"
  name          = "Tommie Koelpin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "34c463b8-38dc-45f9-b653-5f73a45535ff"
}