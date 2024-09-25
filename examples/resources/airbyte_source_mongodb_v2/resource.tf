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
        username              = "Austin_Blanda50"
      }
    }
    discover_sample_size                 = 6
    initial_load_timeout_hours           = 1
    initial_waiting_seconds              = 6
    invalid_cdc_cursor_position_behavior = "Fail sync"
    queue_size                           = 3
    update_capture_mode                  = "Post Image"
  }
  definition_id = "e80aa298-0d84-4713-abef-014dd9af7c7e"
  name          = "Cedric Fritsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "09ea52c7-07cb-405c-8a8d-21cf34658e52"
}