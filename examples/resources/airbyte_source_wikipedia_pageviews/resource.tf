resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "all-access"
    agent   = "user"
    article = "Are_You_the_One%3F"
    country = "IN"
    end     = "...my_end..."
    project = "www.mediawiki.org"
    start   = "...my_start..."
  }
  definition_id = "54523f36-dab5-4122-890f-3e992c2a3f4c"
  name          = "Mr. Dominick Rowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c7cc4eaf-dab4-4c1b-8af6-6c12869f984d"
}