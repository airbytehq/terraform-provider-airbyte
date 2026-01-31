resource "airbyte_source_zapsign" "my_source_zapsign" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    signer_ids = [
      "{ \"see\": \"documentation\" }"
    ]
    start_date = "2021-01-16T14:35:43.440Z"
  }
  definition_id = "eb11899d-1110-421f-947a-61372a589f93"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de02826c-b1d3-4a11-9d3e-521ad26a6d25"
}