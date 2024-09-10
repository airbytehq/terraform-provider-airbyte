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
        username              = "Cole62"
      }
    }
    discover_sample_size                 = 6
    initial_load_timeout_hours           = 5
    initial_waiting_seconds              = 4
    invalid_cdc_cursor_position_behavior = "Re-sync data"
    queue_size                           = 5
    update_capture_mode                  = "Lookup"
  }
  definition_id = "1dbfafbd-d349-4afd-8cd9-5bcfe3342dc4"
  name          = "Anne Nienow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "61635af9-f94f-4985-aa22-e677c77be4e4"
}