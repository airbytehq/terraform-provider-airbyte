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
  name         = "Elvira Collins"
  secret_id    = "...my_secret_id..."
  workspace_id = "309db053-6d9e-475c-a006-f5392c11a25a"
}