resource "airbyte_source_mongodb_v2" "my_source_mongodbv2" {
  configuration = {
    database_config = {
      mongo_db_atlas_replica_set = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_source           = "admin"
        connection_string     = "mongodb+srv://cluster0.abcd1.mongodb.net/"
        database              = "...my_database..."
        password              = "...my_password..."
        schema_enforced       = false
        username              = "Ray12"
      }
    }
    discover_sample_size                 = 6
    initial_waiting_seconds              = 4
    invalid_cdc_cursor_position_behavior = "Re-sync data"
    queue_size                           = 7
    update_capture_mode                  = "Post Image"
  }
  definition_id = "203cb787-6e75-4a53-9f3b-4802a3b9d674"
  name          = "Lance Kautzer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e116c781-16c7-40bf-b326-67c47d503616"
}