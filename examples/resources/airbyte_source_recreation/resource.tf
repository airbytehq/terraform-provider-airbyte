resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "e6c8bd1c-ccad-43b1-8406-5293193648ca"
  name          = "Naomi Dietrich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8652384b-db82-41f9-88ef-a40dc207c50e"
}