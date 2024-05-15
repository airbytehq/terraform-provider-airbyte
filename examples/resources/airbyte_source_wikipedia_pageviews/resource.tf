resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "desktop"
    agent   = "user"
    article = "Are_You_the_One%3F"
    country = "IN"
    end     = "...my_end..."
    project = "commons.wikimedia.org"
    start   = "...my_start..."
  }
  definition_id = "be9226a9-54ff-4f93-912e-392ce90b9169"
  name          = "Dr. Rudy Emard"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2efb21ef-2bc4-48bf-87f2-e7721366646f"
}