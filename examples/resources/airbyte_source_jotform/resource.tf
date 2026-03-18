resource "airbyte_source_jotform" "my_source_jotform" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_endpoint = {
      basic = {
        url_prefix = "Standard"
      }
    }
    api_key    = "...my_api_key..."
    end_date   = "2022-06-27T20:19:13.324Z"
    start_date = "2021-12-12T15:58:25.922Z"
  }
  definition_id = "3456679e-2ff2-4ef7-aa9f-da6c0cc13894"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "33d17617-4812-4fd7-aad4-651de8e9f868"
}