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
        username              = "Juvenal53"
      }
    }
    discover_sample_size    = 6
    initial_waiting_seconds = 9
    queue_size              = 4
  }
  definition_id = "fcbb78be-d982-412c-b04a-e19387527d5e"
  name          = "Eloise Willms"
  secret_id     = "...my_secret_id..."
  workspace_id  = "46d0c0b7-968b-4724-a137-fe2e9e26c4c1"
}