resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "es"
    end_date = "2022-08-21 16:27:09"
    in = [
      "description",
    ]
    language = "ta"
    nullable = [
      "content",
    ]
    query               = "Intel AND (i7 OR i9)"
    sortby              = "relevance"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple AND NOT iPhone"
    top_headlines_topic = "world"
  }
  definition_id = "df3c14a3-49fd-4e89-ab27-6cbad00caee1"
  name          = "Sadie Gleichner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b57e54a-27b6-417a-812e-6bf68e1922df"
}