resource "airbyte_source_dwolla" "my_source_dwolla" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    environment           = "api-sandbox"
    start_date            = "2020-05-08T00:01:08.162Z"
  }
  definition_id = "a3b18774-12ed-4bf1-9c31-fa89c3b6d91b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b6526461-2e14-450f-aaa2-ea32a030e64d"
}