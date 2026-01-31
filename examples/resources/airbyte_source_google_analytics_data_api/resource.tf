resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
    additional_properties     = "{ \"see\": \"documentation\" }"
    convert_conversions_event = true
    credentials = {
      authenticate_via_google_oauth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports_array = [
      {
        cohort_spec = {
          enabled = {
            cohort_report_settings = {
              accumulate = true
            }
            cohorts = [
              {
                date_range = {
                  end_date   = "2021-01-01"
                  start_date = "2021-01-01"
                }
                dimension = "firstSessionDate"
                name      = "...my_name..."
              }
            ]
            cohorts_range = {
              end_offset   = 5
              granularity  = "WEEKLY"
              start_offset = 1
            }
          }
        }
        dimension_filter = {
          filter = {
            field_name = "...my_field_name..."
            filter = {
              string_filter = {
                case_sensitive = false
                match_type = [
                  "MATCH_TYPE_UNSPECIFIED"
                ]
                value = "...my_value..."
              }
            }
          }
        }
        dimensions = [
          "..."
        ]
        metric_filter = {
          and_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  string_filter = {
                    case_sensitive = true
                    match_type = [
                      "MATCH_TYPE_UNSPECIFIED"
                    ]
                    value = "...my_value..."
                  }
                }
              }
            ]
          }
          or_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  numeric_filter = {
                    operation = [
                      "GREATER_THAN_OR_EQUAL"
                    ]
                    value = {
                      double_value = {
                        value = 0.63
                      }
                    }
                  }
                }
              }
            ]
          }
        }
        metrics = [
          "..."
        ]
        name = "...my_name..."
      }
    ]
    date_ranges_end_date   = "2021-01-31"
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    lookback_window        = 2
    property_ids = [
      "1738294",
      "5729978930",
    ]
    window_in_days = 30
  }
  definition_id = "7802af8f-5c6f-48ec-9d74-596e4bdcf24c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "78e7637d-eb31-40e9-8ac3-f8953ca23ae1"
}