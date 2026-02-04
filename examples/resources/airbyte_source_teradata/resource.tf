resource "airbyte_source_teradata" "my_source_teradata" {
  configuration = {
    database           = "...my_database..."
    host               = "...my_host..."
    jdbc_url_params    = "...my_jdbc_url_params..."
    password           = "...my_password..."
    port               = 1025
    replication_method = "CDC"
    ssl                = true
    ssl_mode = {
      # ...
    }
    username = "...my_username..."
  }
  definition_id = "ba7db100-1b70-4798-90da-5dbf4f3d5f37"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5007da20-61c2-4f7a-8699-e96db6947367"
}