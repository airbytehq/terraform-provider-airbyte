resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example1.host.com:27017,example2.host.com:27017,example3.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    source_type       = "mongodb-internal-poc"
    user              = "...my_user..."
  }
  name         = "Dr. Cary McKenzie"
  secret_id    = "...my_secret_id..."
  workspace_id = "7428ad9a-9f8b-4f82-a112-5359d98387f7"
}