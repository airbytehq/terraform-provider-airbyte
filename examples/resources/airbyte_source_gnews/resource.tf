resource "airbyte_source_gnews" "my_source_gnews" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "ua"
    end_date = "2022-08-21 16:27:09"
    in = [
      "description",
    ]
    language = "no"
    nullable = [
      "content",
    ]
    query               = "Apple OR Microsoft"
    sortby              = "publishedAt"
    start_date          = "2022-08-21 16:27:09"
    top_headlines_query = "Apple AND NOT iPhone"
    top_headlines_topic = "nation"
  }
  definition_id = "5108cd8d-f8fd-4dac-ae82-61af8b9bb485"
  name          = "Nadine Jenkins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "be1e785d-e7e3-427e-b787-5126eb569443"
}