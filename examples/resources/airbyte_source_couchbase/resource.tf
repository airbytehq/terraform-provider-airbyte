resource "airbyte_source_couchbase" "my_source_couchbase" {
  configuration = {
    bucket            = "...my_bucket..."
    connection_string = "...my_connection_string..."
    password          = "...my_password..."
    start_date        = "2021-06-27T21:28:47.762Z"
    username          = "...my_username..."
  }
  definition_id = "19a9b67f-a853-4ae1-846b-10537ca52404"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8b7a745-6e54-4a64-b6b8-c11deac52738"
}