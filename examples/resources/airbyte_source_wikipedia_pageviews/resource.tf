resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "mobile-app"
    agent   = "automated"
    article = "Are_You_the_One%3F"
    country = "IN"
    end     = "...my_end..."
    project = "en.wikipedia.org"
    start   = "...my_start..."
  }
  name         = "Blanca West"
  secret_id    = "...my_secret_id..."
  workspace_id = "22849b58-5759-4fd7-9d74-aa20ea69f1b1"
}