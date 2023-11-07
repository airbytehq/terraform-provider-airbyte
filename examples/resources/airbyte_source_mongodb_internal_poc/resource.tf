resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  name         = "Victoria Wiegand"
  secret_id    = "...my_secret_id..."
  workspace_id = "a1e39a63-be20-49ca-a593-eb808ec8c0a1"
}