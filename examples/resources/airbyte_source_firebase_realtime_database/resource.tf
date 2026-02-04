resource "airbyte_source_firebase_realtime_database" "my_source_firebaserealtimedatabase" {
  configuration = {
    buffer_size                    = 6.78
    database_name                  = "...my_database_name..."
    google_application_credentials = "...my_google_application_credentials..."
    path                           = "...my_path..."
  }
  definition_id = "bbd4e616-84e2-44dc-880f-b4605fc8db71"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8dceb17-4d65-4ec8-8cf6-fadbcc1aa5af"
}