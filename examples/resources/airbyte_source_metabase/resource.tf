resource "airbyte_source_metabase" "my_source_metabase" {
    configuration = {
        instance_api_url = "https://localhost:3000/api/"
        password = "...my_password..."
        session_token = "...my_session_token..."
        source_type = "metabase"
        username = "Chasity_Pfeffer33"
    }
            name = "Nick Haag"
            workspace_id = "861adb55-f9e5-4d75-9c9f-e8f7502bfdc3"
        }