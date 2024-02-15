resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey     = "...my_apikey..."
    start_time = "2020-01-01T01:01:01Z"
  }
  definition_id = "51f6c544-c20e-473f-a3dc-46e62d66e727"
  name          = "Christy Stoltenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b92d16e1-dcb0-46fc-9f7a-171f7c1d8bfd"
}