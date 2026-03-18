resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    redirect_uri          = "...my_redirect_uri..."
    refresh_token         = "...my_refresh_token..."
    start_date            = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "3490c201-5d95-4783-b600-eaf07a4c7787"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f594140b-f616-4961-9529-4b6bdebbb064"
}