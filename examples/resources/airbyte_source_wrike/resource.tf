resource "airbyte_source_wrike" "my_source_wrike" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2017-01-25T00:00:00Z"
    wrike_instance        = "...my_wrike_instance..."
  }
  definition_id = "4e809546-36aa-49cb-8be0-32fbc5664fb1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "26c5ac5f-c619-4257-b95d-47e14cbf19c2"
}