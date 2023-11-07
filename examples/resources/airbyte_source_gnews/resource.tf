resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "it"
    end_date = "2022-08-21 16:27:09"
    in = [
      "title",
    ]
    language = "he"
    nullable = [
      "title",
    ]
    query               = "(Windows 7) AND (Windows 10)"
    sortby              = "relevance"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple OR Microsoft"
    top_headlines_topic = "science"
  }
  name         = "Dr. Lynne Wuckert DVM"
  secret_id    = "...my_secret_id..."
  workspace_id = "20de16b8-da7b-4814-bf85-1cf99c7fd70e"
}