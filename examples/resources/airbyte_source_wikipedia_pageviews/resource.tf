resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access  = "all-access"
    agent   = "all-agents"
    article = "Are_You_the_One%3F"
    country = "FR"
    end     = "...my_end..."
    project = "en.wikipedia.org"
    start   = "...my_start..."
  }
  definition_id = "e050b529-b789-4b69-87ec-e0c9b62213d4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "01bb108c-0494-46a7-85a8-f0085655e4b8"
}