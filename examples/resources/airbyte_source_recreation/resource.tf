resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "f65a7105-f2e5-470a-9372-ede1299d4841"
  name          = "Heather Bashirian"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6e7ec488-16b0-4c62-b897-5147c3e6c8bd"
}