resource "airbyte_source_singlestore" "my_source_singlestore" {
  configuration = {
    database           = "...my_database..."
    host               = "...my_host..."
    jdbc_url_params    = "...my_jdbc_url_params..."
    password           = "...my_password..."
    port               = 3306
    replication_method = "STANDARD"
    ssl_mode = {
      disable = {
        # ...
      }
      required = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "107cdce7-8707-4206-9845-202877de1aab"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "98486ca7-3f16-4af4-be4d-6158e7f4d800"
}