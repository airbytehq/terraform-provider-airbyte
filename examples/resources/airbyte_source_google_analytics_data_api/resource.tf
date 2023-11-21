resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
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
        dimension_filter = {
          and_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  source_google_analytics_data_api_update_schemas_custom_reports_array_between_filter = {
                    from_value = {
                      source_google_analytics_data_api_schemas_custom_reports_array_dimension_filter_dimensions_filter_1_expressions_double_value = {
                        value = 45.05
                      }
                    }
                    to_value = {
                      source_google_analytics_data_api_schemas_custom_reports_array_dimension_filter_dimensions_filter_1_expressions_filter_double_value = {
                        value = 22.65
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
          source_google_analytics_data_api_update_and_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  source_google_analytics_data_api_schemas_custom_reports_array_metric_filter_between_filter = {
                    from_value = {
                      source_google_analytics_data_api_schemas_custom_reports_array_metric_filter_metrics_filter_1_expressions_filter_double_value = {
                        value = 8.4
                      }
                    }
                    to_value = {
                      source_google_analytics_data_api_schemas_custom_reports_array_metric_filter_metrics_filter_1_double_value = {
                        value = 77.49
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
        name = "Mrs. Mercedes Herman PhD"
      },
    ]
    date_ranges_start_date = "2021-01-01"
    property_ids = [
      "...",
    ]
    window_in_days = 60
  }
  definition_id = "d4fc0324-2ccd-4276-ba0d-30eb91c3df25"
  name          = "Rodney Goldner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "52dc8258-f30a-4271-83b0-0ec7045956c0"
}