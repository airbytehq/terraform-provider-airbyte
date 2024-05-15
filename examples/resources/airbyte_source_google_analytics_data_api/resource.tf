resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
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
                        value = 46.54
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 72.65
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
                        value = 3.03
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 70.68
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
        name = "Lucille Daugherty Jr."
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    property_ids = [
      "...",
    ]
    window_in_days = 60
  }
  definition_id = "ca706139-037c-47ee-b972-df3c14a349fd"
  name          = "Clayton McClure"
  secret_id     = "...my_secret_id..."
  workspace_id  = "276cbad0-0cae-4e12-84e6-5b57e54a27b6"
}