resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example1.host.com:27017,example2.host.com:27017,example3.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  definition_id = "799a12d6-e33e-466d-b00d-4772456d0d26"
  name          = "Sergio Bogisich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bb3566ca-647b-4a4f-baab-a25784141a21"
}