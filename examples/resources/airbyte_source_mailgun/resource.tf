resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain_region         = "US"
    private_key           = "...my_private_key..."
    start_date            = "2023-08-01T00:00:00Z"
  }
  definition_id = "bd853e05-630d-4e28-852c-3ff9e84d219d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7f7be58-dede-4a51-8b06-e957318ad0a2"
}