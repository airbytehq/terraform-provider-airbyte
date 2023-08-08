resource "airbyte_source_freshservice" "my_source_freshservice" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.freshservice.com"
    source_type = "freshservice"
    start_date  = "2020-10-01T00:00:00Z"
  }
  name         = "Anita Dare III"
  secret_id    = "...my_secret_id..."
  workspace_id = "8b8502a5-5e7f-473b-8845-e320a319f4ba"
}