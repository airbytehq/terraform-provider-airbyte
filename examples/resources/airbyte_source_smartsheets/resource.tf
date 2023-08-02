resource "airbyte_source_smartsheets" "my_source_smartsheets" {
    configuration = {
        credentials =     {
                access_token = "...my_access_token..."
                auth_type = "access_token"
            }
        source_type = "smartsheets"
        spreadsheet_id = "...my_spreadsheet_id..."
        start_datetime = "2000-01-01T13:00:00-07:00"
    }
            name = "Carlos Armstrong"
            workspace_id = "0d1b4901-f2bd-489c-8a32-639da5b7b690"
        }