resource "airbyte_source_mongodb" "my_source_mongodb" {
  configuration = {
    auth_source = "admin"
    database    = "...my_database..."
    instance_type = {
      source_mongodb_mongo_db_instance_type_mongo_db_atlas = {
        cluster_url = "...my_cluster_url..."
        instance    = "atlas"
      }
    }
    password    = "...my_password..."
    source_type = "mongodb"
    user        = "...my_user..."
  }
  name         = "Doreen Mayer"
  secret_id    = "...my_secret_id..."
  workspace_id = "5ca006f5-392c-411a-a5a8-bf92f97428ad"
}