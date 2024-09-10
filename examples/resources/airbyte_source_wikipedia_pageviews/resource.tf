resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "mobile-web"
    agent   = "user"
    article = "Are_You_the_One%3F"
    country = "IN"
    end     = "...my_end..."
    project = "en.wikipedia.org"
    start   = "...my_start..."
  }
  definition_id = "ac70a337-a3d1-431b-9bdf-0c811e90b6ae"
  name          = "Lee Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "138174cf-a455-4367-8966-ff0c6426b6cd"
}