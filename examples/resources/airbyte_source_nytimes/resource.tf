resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-08"
    period                = 1
    share_type            = "facebook"
    start_date            = "2022-08"
  }
  definition_id = "0fae6a9a-04eb-44d4-96e1-e02d3dbc1d83"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "022ba7a1-465f-4932-ba45-6444b9cf5670"
}