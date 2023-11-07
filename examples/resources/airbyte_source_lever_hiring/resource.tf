resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Production"
    start_date  = "2021-03-01T00:00:00Z"
  }
  name         = "Joyce Shields"
  secret_id    = "...my_secret_id..."
  workspace_id = "00cfe1ba-68d3-4405-82b9-6029febd39e6"
}