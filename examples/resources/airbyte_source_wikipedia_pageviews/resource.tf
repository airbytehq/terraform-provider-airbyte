resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access                = "all-access"
    additional_properties = "{ \"see\": \"documentation\" }"
    agent                 = "all-agents"
    article               = "Are_You_the_One%3F"
    country               = "FR"
    end                   = "...my_end..."
    project               = "en.wikipedia.org"
    start                 = "...my_start..."
  }
  definition_id = "87c58f70-6f7a-4f70-aba5-bab1a458f5ba"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "01bb108c-0494-46a7-85a8-f0085655e4b8"
}