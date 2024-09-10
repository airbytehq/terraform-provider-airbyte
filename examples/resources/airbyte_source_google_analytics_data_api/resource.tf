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
                        value = 82.98
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 63.94
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
                        value = 51.9
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 4.5
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
        name = "Todd Rodriguez"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    lookback_window        = 4
    property_ids = [
      "...",
    ]
    window_in_days = 120
  }
  definition_id = "950935ad-536c-4500-8734-e30b46b959e4"
  name          = "Julio Harber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0922711-9b95-4b60-898b-b7037ab5561c"
}