resource "airbyte_source_shutterstock" "my_source_shutterstock" {
  configuration = {
    additional_properties    = "{ \"see\": \"documentation\" }"
    api_token                = "...my_api_token..."
    query_for_audio_search   = "...my_query_for_audio_search..."
    query_for_catalog_search = "...my_query_for_catalog_search..."
    query_for_image_search   = "...my_query_for_image_search..."
    query_for_video_search   = "...my_query_for_video_search..."
    start_date               = "2022-02-23T01:34:26.100Z"
  }
  definition_id = "51e83f7f-6802-4eb1-8289-253c44e1dc0b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d4a55ad-a369-4f47-a604-6bc8ccb91b0a"
}