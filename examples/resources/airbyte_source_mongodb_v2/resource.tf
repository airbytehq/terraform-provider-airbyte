resource "airbyte_source_mongodb_v2" "my_source_mongodbv2" {
  configuration = {
    database_config = {
      self_managed_replica_set = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_source           = "admin"
        connection_string     = "mongodb://example1.host.com:27017,example2.host.com:27017,example3.host.com:27017/"
        database              = "...my_database..."
        password              = "...my_password..."
        schema_enforced       = false
        username              = "...my_username..."
      }
    }
    discover_sample_size                 = 95684
    initial_load_timeout_hours           = 0
    initial_waiting_seconds              = 7
    invalid_cdc_cursor_position_behavior = "Fail sync"
    queue_size                           = 4
    update_capture_mode                  = "Lookup"
  }
  definition_id = "e30b0d99-fa62-4e68-8f19-2a57eaddc53f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fa7bf7db-d8dc-4773-80b5-3e3a9ea84f0d"
}