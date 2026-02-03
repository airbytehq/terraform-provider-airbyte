resource "airbyte_source_google_calendar" "my_source_googlecalendar" {
  configuration = {
    additional_properties  = "{ \"see\": \"documentation\" }"
    calendarid             = "...my_calendarid..."
    client_id              = "...my_client_id..."
    client_refresh_token_2 = "...my_client_refresh_token_2..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "d17267c5-40b1-497e-afe0-dec7c88f79aa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ff839499-0622-4f96-abcc-0d0ca631667e"
}