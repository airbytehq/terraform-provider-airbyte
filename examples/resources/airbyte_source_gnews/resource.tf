resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "cn"
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
    top_headlines_query = "Apple AND NOT iPhone"
    top_headlines_topic = "sports"
  }
  definition_id = "5a75a7c5-fc21-4d72-ab31-0b676fb731c6"
  name          = "Pedro Champlin PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9821d4fc-0324-42cc-9276-3a0d30eb91c3"
}