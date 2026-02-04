resource "airbyte_source_cockroachdb" "my_source_cockroachdb" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    ssl             = true
    username        = "...my_username..."
  }
  definition_id = "ad4d5aec-5912-4956-9196-5167bd8dc5bb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0f3d107-5271-4d1b-a6e4-69d6ae4bfb27"
}