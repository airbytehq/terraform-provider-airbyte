resource "airbyte_source_fauna" "my_source_fauna" {
    configuration = {
        collection = {
            deletions =     {
                    deletion_mode = "ignore"
                }
            page_size = 2
        }
        domain = "...my_domain..."
        port = 2
        scheme = "...my_scheme..."
        secret = "...my_secret..."
        source_type = "fauna"
    }
            name = "Angel Lakin"
            workspace_id = "cb3ecfda-8d0c-4549-af03-004978a61fa1"
        }