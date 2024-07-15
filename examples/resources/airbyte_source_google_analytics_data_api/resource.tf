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
                        value = 54.51
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 44.08
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
                        value = 41.77
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 64.64
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
        name = "Julia Stracke"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = true
    lookback_window        = 14
    property_ids = [
      "...",
    ]
    window_in_days = 200
  }
  definition_id = "7e953bf2-defe-4a2f-9145-f48d36313985"
  name          = "Kim Marvin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "52d3206a-fb3a-4724-a60d-40134e58876c"
}