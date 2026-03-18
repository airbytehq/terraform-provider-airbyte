resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain_region         = "US"
    private_key           = "...my_private_key..."
    start_date            = "2023-08-01T00:00:00Z"
  }
  definition_id = "5b9cb09e-1003-4f9c-983d-5779d1b2cd51"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7f7be58-dede-4a51-8b06-e957318ad0a2"
}