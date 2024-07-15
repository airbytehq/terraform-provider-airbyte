resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  definition_id = "74280681-2ca7-4b26-9526-15553a713498"
  name          = "Luis Wilderman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "99a12d6e-33e6-46d7-80d4-772456d0d26d"
}