resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "ru"
    end_date = "2022-08-21 16:27:09"
    in = [
      "title",
    ]
    language = "hi"
    nullable = [
      "description",
    ]
    query               = "Intel AND (i7 OR i9)"
    sortby              = "publishedAt"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple OR Microsoft"
    top_headlines_topic = "sports"
  }
  definition_id = "77e51fa7-73fc-4f1a-8306-e082909d97bf"
  name          = "Kerry Reinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3671a9ca-1d9c-4174-bee4-145562d27576"
}