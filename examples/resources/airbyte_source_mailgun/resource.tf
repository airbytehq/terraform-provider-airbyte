resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "EU"
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "b03d25be-e3db-4adc-877c-b62b59b9f1ee"
  name          = "Wanda Greenfelder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "78a5bcbb-c2cb-483b-ac4d-d4d42907741e"
}