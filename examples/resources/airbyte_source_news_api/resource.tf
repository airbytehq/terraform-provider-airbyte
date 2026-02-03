resource "airbyte_source_news_api" "my_source_newsapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    category              = "sports"
    country               = "ve"
    domains = [
      "..."
    ]
    end_date = "2021-01-01"
    exclude_domains = [
      "..."
    ]
    language = "se"
    search_in = [
      "description"
    ]
    search_query = "+bitcoin OR +crypto"
    sort_by      = "relevancy"
    sources = [
      "..."
    ]
    start_date = "2021-01-01"
  }
  definition_id = "2055c47d-96b3-45fb-b87b-ce89b41640c2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0cb04faa-3d4c-4274-9b19-99c077dc3d83"
}