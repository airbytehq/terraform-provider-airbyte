resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "mobile-app"
    agent   = "spider"
    article = "Are_You_the_One%3F"
    country = "FR"
    end     = "...my_end..."
    project = "commons.wikimedia.org"
    start   = "...my_start..."
  }
  definition_id = "60c3a7ba-3362-448b-a45d-fad9324f6ab9"
  name          = "Daryl Effertz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "526eae71-eb75-49d7-9d0b-f2f57219578f"
}