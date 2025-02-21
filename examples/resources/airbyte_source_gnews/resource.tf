resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "gr"
    end_date = "2022-08-21 16:27:09"
    in = [
      "description"
    ]
    language = "el"
    nullable = [
      "content"
    ]
    query               = "Microsoft Windows 10"
    sortby              = "publishedAt"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Microsoft Windows 10"
    top_headlines_topic = "health"
  }
  definition_id = "c6b2adaf-5531-41d5-90fd-e24b104a9d91"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4cd7e01-eaeb-4a47-98ed-9dadb5de4147"
}