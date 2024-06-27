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
        username              = "Luciano.King42"
      }
    }
    discover_sample_size                 = 6
    initial_waiting_seconds              = 4
    invalid_cdc_cursor_position_behavior = "Fail sync"
    queue_size                           = 4
    update_capture_mode                  = "Lookup"
  }
  definition_id = "5553a713-498a-43f9-b99a-12d6e33e66d7"
  name          = "Melissa Stoltenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "72456d0d-26d9-4147-bb35-66ca647ba4f7"
}