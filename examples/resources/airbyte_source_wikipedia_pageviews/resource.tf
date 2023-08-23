resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access      = "desktop"
    agent       = "all-agents"
    article     = "Are_You_the_One%3F"
    country     = "FR"
    end         = "...my_end..."
    project     = "www.mediawiki.org"
    source_type = "wikipedia-pageviews"
    start       = "...my_start..."
  }
  name         = "Catherine Mitchell"
  secret_id    = "...my_secret_id..."
  workspace_id = "8f88ece7-bf90-44e0-9105-d38908162c6b"
}