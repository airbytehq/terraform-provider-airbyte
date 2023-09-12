resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example1.host.com:27017,example2.host.com:27017,example3.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    source_type       = "mongodb-internal-poc"
    user              = "...my_user..."
  }
  name         = "Eduardo Weissnat"
  secret_id    = "...my_secret_id..."
  workspace_id = "f8221125-359d-4983-87f7-a79cd72cd248"
}