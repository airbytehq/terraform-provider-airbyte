resource "airbyte_source_bluetally" "my_source_bluetally" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-03-17T18:48:32.916Z"
  }
  definition_id = "04516940-45b2-428b-ace1-8d44a665d56a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7710369c-6714-4aec-ab17-3c413511be4d"
}