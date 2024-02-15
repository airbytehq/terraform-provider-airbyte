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
                        value = 27.51
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 50.41
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
                        value = 85.84
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 24.53
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
        name = "Connie Boyer"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    property_ids = [
      "...",
    ]
    window_in_days = 60
  }
  definition_id = "f352d320-6afb-43a7-a4a6-0d40134e5887"
  name          = "Mrs. Jody Rogahn MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "128ae06a-57c7-4c57-baf1-e5baddd2747b"
}