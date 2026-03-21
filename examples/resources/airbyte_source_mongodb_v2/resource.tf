resource "airbyte_source_mongodb_v2" "my_source_mongodbv2" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    database_config = {
      self_managed_replica_set = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_source           = "admin"
        connection_string     = "mongodb://example1.host.com:27017,example2.host.com:27017,example3.host.com:27017/"
        databases = [
          "..."
        ]
        password        = "...my_password..."
        schema_enforced = true
        username        = "...my_username..."
      }
    }
    discover_sample_size                 = 10000
    discover_timeout_seconds             = 600
    initial_load_timeout_hours           = 8
    initial_waiting_seconds              = 300
    invalid_cdc_cursor_position_behavior = "Fail sync"
    queue_size                           = 10000
    update_capture_mode                  = "Lookup"
  }
  definition_id = "b2e713cd-cc36-4c0a-b5bd-b47cb8a0561e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fa7bf7db-d8dc-4773-80b5-3e3a9ea84f0d"
}