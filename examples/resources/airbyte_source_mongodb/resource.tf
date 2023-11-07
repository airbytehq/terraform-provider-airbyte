resource "airbyte_source_mongodb" "my_source_mongodb" {
  configuration = {
    auth_source = "admin"
    database    = "...my_database..."
    instance_type = {
      source_mongodb_mongo_db_atlas = {
        additional_properties = "{ \"see\": \"documentation\" }"
        cluster_url           = "...my_cluster_url..."
      }
    }
    password = "...my_password..."
    user     = "...my_user..."
  }
  name         = "Shelley Parker"
  secret_id    = "...my_secret_id..."
  workspace_id = "4726a8cd-9c5a-4ad4-bafd-a11e10d002e1"
}