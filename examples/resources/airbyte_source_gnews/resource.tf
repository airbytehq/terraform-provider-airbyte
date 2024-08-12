resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "in"
    end_date = "2022-08-21 16:27:09"
    in = [
      "description",
    ]
    language = "te"
    nullable = [
      "description",
    ]
    query               = "Apple OR Microsoft"
    sortby              = "relevance"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Microsoft Windows 10"
    top_headlines_topic = "technology"
  }
  definition_id = "b617a012-e6bf-468e-9922-df283a614313"
  name          = "Darrell Cummerata II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "031fd7b8-2b3c-4164-8195-0da31ebecd9b"
}