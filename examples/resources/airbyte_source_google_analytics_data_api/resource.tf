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
                        value = 57.56
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 31.93
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
                        value = 35.8
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 18.49
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
        name = "Edmund Legros"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    lookback_window        = 2
    property_ids = [
      "...",
    ]
    window_in_days = 30
  }
  definition_id = "183b00ec-7045-4956-803e-c7b8b68fdfc0"
  name          = "Miriam Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fd673f59-a8d0-4acc-9948-b0061059fac1"
}