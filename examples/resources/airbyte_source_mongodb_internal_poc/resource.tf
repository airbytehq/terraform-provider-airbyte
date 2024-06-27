resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  definition_id = "6ad0e44a-4dc9-470c-8785-73a20ac990f9"
  name          = "Steve Sauer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a67a8515-0ea8-4612-8cd6-18d742806812"
}