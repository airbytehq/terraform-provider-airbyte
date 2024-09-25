resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "mobile-web"
    agent   = "all-agents"
    article = "Are_You_the_One%3F"
    country = "FR"
    end     = "...my_end..."
    project = "www.mediawiki.org"
    start   = "...my_start..."
  }
  definition_id = "c999b10a-73ba-40c6-911f-95cb65e559b3"
  name          = "Lawrence Senger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bd06debd-ebc5-4381-8f44-a1e8a05bc47e"
}