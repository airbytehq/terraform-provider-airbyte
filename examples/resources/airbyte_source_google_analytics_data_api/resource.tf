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
                        value = 73.14
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 40.37
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
                        value = 7.66
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 46.24
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
        name = "Kenneth Boyle"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    property_ids = [
      "...",
    ]
    window_in_days = 90
  }
  definition_id = "e1922df2-83a6-4143-93a5-2314031fd7b8"
  name          = "Lula Feil III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4c1950da-31eb-4ecd-9b5a-75a7c5fc21d7"
}