resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "ca"
    end_date = "2022-08-21 16:27:09"
    in = [
      "content",
    ]
    language = "ru"
    nullable = [
      "content",
    ]
    query               = "(Windows 7) AND (Windows 10)"
    sortby              = "relevance"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "(Windows 7) AND (Windows 10)"
    top_headlines_topic = "health"
  }
  definition_id = "eda05828-5279-413e-9fcf-9c9058e69d20"
  name          = "Percy Dicki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb55c695-e2f0-48eb-b6e3-51cef20de4cf"
}