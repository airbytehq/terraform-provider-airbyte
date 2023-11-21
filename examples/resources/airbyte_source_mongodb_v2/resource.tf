resource "airbyte_source_mongodb_v2" "my_source_mongodbv2" {
  configuration = {
    database_config = {
      mongo_db_atlas_replica_set = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_source           = "admin"
        connection_string     = "mongodb+srv://cluster0.abcd1.mongodb.net/"
        database              = "...my_database..."
        password              = "...my_password..."
        username              = "Curtis38"
      }
    }
    discover_sample_size    = 1
    initial_waiting_seconds = 0
    queue_size              = 5
  }
  definition_id = "c03f8392-0634-4c9d-b1c4-26709282f0b3"
  name          = "Nora Waelchi"
  secret_id     = "...my_secret_id..."
  workspace_id  = "729ff502-4b69-40b2-b36f-2f7a3b95d4ab"
}