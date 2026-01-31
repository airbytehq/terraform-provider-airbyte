resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    additional_properties       = "{ \"see\": \"documentation\" }"
    allow_leading_numbers       = true
    batch_size                  = 10
    combine_letter_number_pairs = false
    combine_number_word_pairs   = true
    credentials = {
      service_account_key_authentication = {
        service_account_info = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
      }
    }
    names_conversion                    = false
    read_empty_header_columns           = true
    remove_leading_trailing_underscores = true
    remove_special_characters           = false
    spreadsheet_id                      = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
    stream_name_overrides = [
      {
        custom_stream_name = "...my_custom_stream_name..."
        source_stream_name = "...my_source_stream_name..."
      }
    ]
  }
  definition_id = "8010dc77-56bf-4220-982b-1460e03dad99"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6266806c-1cd7-4250-b2c6-f4ef1504f265"
}