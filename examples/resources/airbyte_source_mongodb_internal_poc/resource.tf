resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example1.host.com:27017,example2.host.com:27017,example3.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  definition_id = "6ea9203c-b787-46e7-9a53-1f3b4802a3b9"
  name          = "Hector Kuhic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "76dbe116-c781-416c-b0bf-b32667c47d50"
}