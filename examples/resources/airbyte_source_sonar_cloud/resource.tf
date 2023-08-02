resource "airbyte_source_sonar_cloud" "my_source_sonarcloud" {
    configuration = {
        component_keys = [
            "{ \"see\": \"documentation\" }",
        ]
        end_date = "YYYY-MM-DD"
        organization = "airbyte"
        source_type = "sonar-cloud"
        start_date = "YYYY-MM-DD"
        user_token = "...my_user_token..."
    }
            name = "Natalie Schuster"
            workspace_id = "194398c7-83c9-4239-8ed3-d3ab7ca3c5ca"
        }