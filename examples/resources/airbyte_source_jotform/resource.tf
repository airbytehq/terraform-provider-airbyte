resource "airbyte_source_jotform" "my_source_jotform" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_endpoint = {
      basic = {
        url_prefix = "HIPAA"
      }
    }
    api_key    = "...my_api_key..."
    end_date   = "2022-06-27T20:19:13.324Z"
    start_date = "2021-12-12T15:58:25.922Z"
  }
  definition_id = "bc700c3e-1398-401e-810a-54a9f3e86b27"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "33d17617-4812-4fd7-aad4-651de8e9f868"
}