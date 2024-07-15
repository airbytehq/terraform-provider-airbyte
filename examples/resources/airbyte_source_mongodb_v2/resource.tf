resource "airbyte_source_mongodb_v2" "my_source_mongodbv2" {
  configuration = {
    database_config = {
      mongo_db_atlas_replica_set = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_source           = "admin"
        connection_string     = "mongodb+srv://cluster0.abcd1.mongodb.net/"
        database              = "...my_database..."
        password              = "...my_password..."
        schema_enforced       = true
        username              = "Ashley_Gerhold"
      }
    }
    discover_sample_size                 = 8
    initial_waiting_seconds              = 2
    invalid_cdc_cursor_position_behavior = "Fail sync"
    queue_size                           = 4
    update_capture_mode                  = "Lookup"
  }
  definition_id = "ca647ba4-f7aa-4ba2-9784-141a21c8938a"
  name          = "Marc Willms"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b78bed98-212c-4704-ae19-387527d5e3ef"
}