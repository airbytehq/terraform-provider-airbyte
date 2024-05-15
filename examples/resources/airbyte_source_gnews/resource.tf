resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "fr"
    end_date = "2022-08-21 16:27:09"
    in = [
      "content",
    ]
    language = "mr"
    nullable = [
      "title",
    ]
    query               = "Intel AND (i7 OR i9)"
    sortby              = "relevance"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple AND NOT iPhone"
    top_headlines_topic = "sports"
  }
  definition_id = "c6076e71-4fbf-40cf-93ae-d54ef24d0de8"
  name          = "Eula Ferry"
  secret_id     = "...my_secret_id..."
  workspace_id  = "90502015-d2de-44b8-9b33-d2b3a27b0b34"
}