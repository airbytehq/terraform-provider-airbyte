resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "desktop"
    agent   = "user"
    article = "Are_You_the_One%3F"
    country = "FR"
    end     = "...my_end..."
    project = "commons.wikimedia.org"
    start   = "...my_start..."
  }
  definition_id = "8320ef50-a8ca-476b-883e-a280df1804a6"
  name          = "Hannah Moore"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e5814951-2957-4c29-8696-756fe0588102"
}