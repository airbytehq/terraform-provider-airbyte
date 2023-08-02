resource "airbyte_source_wikipedia_pageviews" "my_source_wikipediapageviews" {
    configuration = {
        access = "mobile-web"
        agent = "user"
        article = "Are_You_the_One%3F"
        country = "IN"
        end = "...my_end..."
        project = "commons.wikimedia.org"
        source_type = "wikipedia-pageviews"
        start = "...my_start..."
    }
            name = "Esther Littel"
            workspace_id = "5fc2b862-a00b-4ef6-9e10-0157630bda7a"
        }