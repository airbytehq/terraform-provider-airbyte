resource "airbyte_source_qualaroo" "my_source_qualaroo" {
    configuration = {
        key = "...my_key..."
        source_type = "qualaroo"
        start_date = "2021-03-01T00:00:00.000Z"
        survey_ids = [
            "...",
        ]
        token = "...my_token..."
    }
            name = "Mr. Joel Yost"
            workspace_id = "fb0e0bf1-f821-4797-8d0a-cca77aeb7b70"
        }