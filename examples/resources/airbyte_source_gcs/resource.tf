resource "airbyte_source_gcs" "my_source_gcs" {
    configuration = {
        gcs_bucket = "...my_gcs_bucket..."
        gcs_path = "...my_gcs_path..."
        service_account = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
        source_type = "gcs"
    }
            name = "Miranda Koelpin"
            workspace_id = "c845e320-a319-4f4b-adf9-47c9a867bc42"
        }