resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "mobile-app"
    agent   = "automated"
    article = "Are_You_the_One%3F"
    country = "IN"
    end     = "...my_end..."
    project = "www.mediawiki.org"
    start   = "...my_start..."
  }
  definition_id = "ecaf35c1-5b37-479d-be3d-ccb9fd6e1ad7"
  name          = "Stella Balistreri"
  secret_id     = "...my_secret_id..."
  workspace_id  = "320ef50a-8ca7-46b0-83ea-280df1804a67"
}