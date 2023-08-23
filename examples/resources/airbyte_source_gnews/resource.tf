resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "ca"
    end_date = "2022-08-21 16:27:09"
    in = [
      "description",
    ]
    language = "en"
    nullable = [
      "title",
    ]
    query               = "Microsoft Windows 10"
    sortby              = "publishedAt"
    source_type         = "gnews"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple OR Microsoft"
    top_headlines_topic = "technology"
  }
  name         = "Mercedes Schiller"
  secret_id    = "...my_secret_id..."
  workspace_id = "89df975e-3566-4860-92e9-c3ddc5f111de"
}