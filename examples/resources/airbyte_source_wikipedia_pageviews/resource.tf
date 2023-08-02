resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
  configuration = {
    access      = "desktop"
    agent       = "user"
    article     = "Are_You_the_One%3F"
    country     = "FR"
    end         = "...my_end..."
    project     = "en.wikipedia.org"
    source_type = "wikipedia-pageviews"
    start       = "...my_start..."
  }
  name         = "Taylor Paucek"
  secret_id    = "...my_secretId..."
  workspace_id = "fded84a3-5a41-4238-a1a7-35ac26ae33be"
}