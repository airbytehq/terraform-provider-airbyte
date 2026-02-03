resource "airbyte_source_simplesat" "my_source_simplesat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-11-29T22:17:33.614Z"
    start_date            = "2021-01-26T23:17:56.753Z"
  }
  definition_id = "71f344a9-d6e9-4f92-af72-3ad6e00a3eb8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "dfaba6cd-2bb6-46fc-908c-19c502e19520"
}