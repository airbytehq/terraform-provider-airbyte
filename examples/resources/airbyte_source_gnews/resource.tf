resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "nl"
    end_date = "2022-08-21 16:27:09"
    in = [
      "title",
    ]
    language = "ja"
    nullable = [
      "title",
    ]
    query               = "Apple OR Microsoft"
    sortby              = "publishedAt"
    source_type         = "gnews"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple OR Microsoft"
    top_headlines_topic = "nation"
  }
  name         = "Allison Streich"
  secret_id    = "...my_secret_id..."
  workspace_id = "a89df975-e356-4686-892e-9c3ddc5f111d"
}