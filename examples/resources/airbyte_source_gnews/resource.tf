resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "ie"
    end_date = "2022-08-21 16:27:09"
    in = [
      "content",
    ]
    language = "fr"
    nullable = [
      "description",
    ]
    query               = "Apple AND NOT iPhone"
    sortby              = "publishedAt"
    source_type         = "gnews"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple AND NOT iPhone"
    top_headlines_topic = "business"
  }
  name         = "Katrina Considine"
  secret_id    = "...my_secret_id..."
  workspace_id = "c3ddc5f1-11de-4a10-a6d5-41a4d190feb2"
}