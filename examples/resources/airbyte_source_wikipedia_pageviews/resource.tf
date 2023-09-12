resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access      = "mobile-app"
    agent       = "spider"
    article     = "Are_You_the_One%3F"
    country     = "IN"
    end         = "...my_end..."
    project     = "www.mediawiki.org"
    source_type = "wikipedia-pageviews"
    start       = "...my_start..."
  }
  name         = "Laura Murray"
  secret_id    = "...my_secret_id..."
  workspace_id = "6ed333bb-0ce8-4aa6-9432-a986eb7e14ca"
}