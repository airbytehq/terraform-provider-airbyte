resource "airbyte_source_yousign" "my_source_yousign" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    limit                 = "...my_limit..."
    start_date            = "2021-05-21T21:07:21.613Z"
    subdomain             = "api-sandbox"
  }
  definition_id = "5a78ec38-3a27-4695-8c44-7a6d7e5af928"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5867a7a3-cda1-42de-aa60-dea6430ea0d1"
}