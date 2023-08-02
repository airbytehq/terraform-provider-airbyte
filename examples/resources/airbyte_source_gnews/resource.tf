resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "de"
    end_date = "2022-08-21 16:27:09"
    in = [
      "title",
    ]
    language = "ml"
    nullable = [
      "title",
    ]
    query               = "Intel AND (i7 OR i9)"
    sortby              = "publishedAt"
    source_type         = "gnews"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "(Windows 7) AND (Windows 10)"
    top_headlines_topic = "health"
  }
  name         = "Lois Rutherford"
  workspace_id = "91f82ce1-1571-4723-8537-7dcfa89df975"
}