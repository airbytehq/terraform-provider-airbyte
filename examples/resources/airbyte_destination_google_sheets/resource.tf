resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  definition_id = "a13f0bea-64a2-437e-8a59-e7bfd1d496bd"
  name          = "Ms. Bertha Stoltenberg"
  workspace_id  = "4a7d5d4b-2ee1-453b-82c3-2f48f6e543a0"
}