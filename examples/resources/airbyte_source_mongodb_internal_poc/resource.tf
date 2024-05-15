resource "airbyte_source_mongodb_internal_poc" "my_source_mongodbinternalpoc" {
  configuration = {
    auth_source       = "admin"
    connection_string = "mongodb+srv://example.mongodb.net"
    password          = "...my_password..."
    replica_set       = "...my_replica_set..."
    user              = "...my_user..."
  }
  definition_id = "5c92c205-0fdf-42ba-bd43-d20d3384e15e"
  name          = "Derek Fisher"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2788faea-bade-4b93-8772-879b6069b6a2"
}