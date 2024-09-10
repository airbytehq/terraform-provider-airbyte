resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2022-09-29T12:33:06.148Z"
    token              = "...my_token..."
  }
  definition_id = "b690b273-6f2f-47a3-b95d-4abcb3edfbba"
  name          = "Franklin O'Reilly PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "44a4dc97-0c07-4857-ba20-ac990f9b2ce7"
}