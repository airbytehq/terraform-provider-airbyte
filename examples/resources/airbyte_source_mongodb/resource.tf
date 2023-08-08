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
  name         = "Alfonso Keeling"
  secret_id    = "...my_secret_id..."
  workspace_id = "8a216e19-bafe-4ca6-9914-98140b64ff8a"
}