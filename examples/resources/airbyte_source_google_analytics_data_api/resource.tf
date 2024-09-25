resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
    convert_conversions_event = false
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
          disabled = {}
        }
        dimension_filter = {
          and_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  between_filter = {
                    from_value = {
                      double_value = {
                        value = 59.26
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 93.52
                      }
                    }
                  }
                }
              },
            ]
          }
        }
        dimensions = [
          "...",
        ]
        metric_filter = {
          and_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  between_filter = {
                    from_value = {
                      double_value = {
                        value = 72.46
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 58.88
                      }
                    }
                  }
                }
              },
            ]
          }
        }
        metrics = [
          "...",
        ]
        name = "Mrs. Julia Windler"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = true
    lookback_window        = 3
    property_ids = [
      "...",
    ]
    window_in_days = 364
  }
  definition_id = "8f9d1baa-c6e0-45b1-a50c-14468d231cdd"
  name          = "Jordan Wunsch PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "deee1be4-e723-4eea-b419-bc59e04a869e"
}