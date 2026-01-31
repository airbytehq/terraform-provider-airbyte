resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    additional_properties              = "{ \"see\": \"documentation\" }"
    check_privileges                   = false
    checkpoint_target_interval_seconds = 5
    concurrency                        = 0
    credentials = {
      key_pair_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_type             = "Key Pair Authentication"
        private_key           = "...my_private_key..."
        private_key_password  = "...my_private_key_password..."
        username              = "...my_username..."
      }
    }
    cursor = {
      scan_changes_with_user_defined_cursor = {
        additional_properties = "{ \"see\": \"documentation\" }"
        cursor_method         = "user_defined"
      }
    }
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    role            = "...my_role..."
    schema          = "...my_schema..."
    warehouse       = "...my_warehouse..."
  }
  definition_id = "27125485-2542-4c33-816b-4945c1b73270"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f456591a-a491-49d7-af41-2d440d1ae6ee"
}