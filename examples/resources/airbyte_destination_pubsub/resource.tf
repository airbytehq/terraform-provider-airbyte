resource "airbyte_destination_pubsub" "my_destination_pubsub" {
    configuration = {
        batching_delay_threshold = 5
        batching_element_count_threshold = 1
        batching_enabled = true
        batching_request_bytes_threshold = 7
        credentials_json = "...my_credentials_json..."
        destination_type = "pubsub"
        ordering_enabled = true
        project_id = "...my_project_id..."
        topic_id = "...my_topic_id..."
    }
            name = "Lela Baumbach Jr."
            workspace_id = "12563f94-e29e-4973-a922-a57a15be3e06"
        }