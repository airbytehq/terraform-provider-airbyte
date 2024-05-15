resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb://example.host.com:27017"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  definition_id = "3196ea92-03cb-4787-ae75-a531f3b4802a"
  name          = "Alison Medhurst"
  secret_id     = "...my_secret_id..."
  workspace_id  = "74976dbe-116c-4781-96c7-0bfb32667c47"
}