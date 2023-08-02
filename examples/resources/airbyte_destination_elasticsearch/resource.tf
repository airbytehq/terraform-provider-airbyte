resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
    configuration = {
        authentication_method =     {
                api_key_id = "...my_apiKeyId..."
                api_key_secret = "...my_apiKeySecret..."
                method = "secret"
            }
        ca_certificate = "...my_ca_certificate..."
        destination_type = "elasticsearch"
        endpoint = "...my_endpoint..."
        upsert = true
    }
            name = "Jessie Schuster"
            workspace_id = "6813f16d-9f5f-4ce6-8556-146c3e250fb0"
        }