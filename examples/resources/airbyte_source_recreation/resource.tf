resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
  }
  definition_id = "3a2ccf2b-1ade-42f4-984b-fb0e1b3d2b89"
  name          = "Jesse Kassulke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "838cf8d2-27f3-418d-8240-654f4782740a"
}