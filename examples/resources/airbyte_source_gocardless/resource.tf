resource "airbyte_source_gocardless" "my_source_gocardless" {
  configuration = {
    access_token           = "...my_access_token..."
    additional_properties  = "{ \"see\": \"documentation\" }"
    gocardless_environment = "live"
    gocardless_version     = "...my_gocardless_version..."
    start_date             = "2017-01-25T00:00:00Z"
  }
  definition_id = "43590505-e230-4e7f-89a3-c3411383f4c6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d1ab77a-3011-4b9d-b930-4a6a9c6213fb"
}