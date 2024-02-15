resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "au"
    end_date = "2022-08-21 16:27:09"
    in = [
      "title",
    ]
    language = "ta"
    nullable = [
      "content",
    ]
    query               = "Apple AND NOT iPhone"
    sortby              = "publishedAt"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple OR Microsoft"
    top_headlines_topic = "business"
  }
  definition_id = "956c03ec-7b8b-468f-9fc0-692b4fd673f5"
  name          = "Oliver MacGyver MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cc9948b0-0610-459f-ac1d-6c9b0f0f35d9"
}