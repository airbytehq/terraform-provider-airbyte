resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "mobile-app"
    agent   = "automated"
    article = "Are_You_the_One%3F"
    country = "FR"
    end     = "...my_end..."
    project = "commons.wikimedia.org"
    start   = "...my_start..."
  }
  definition_id = "15b3779d-7e3d-4ccb-9fd6-e1ad7470b832"
  name          = "Delia Zulauf MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8ca76b08-3ea2-480d-b180-4a67b9f3e581"
}