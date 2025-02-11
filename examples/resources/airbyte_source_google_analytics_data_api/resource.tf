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
      service_account_key_authentication = {
        credentials_json = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
      }
    }
    custom_reports_array = [
      {
        cohort_spec = {
          disabled = {
            # ...
          }
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
          and_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  between_filter = {
                    from_value = {
                      double_value = {
                        value = 6.4
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 2.05
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  in_list_filter = {
                    case_sensitive = false
                    values = [
                      "..."
                    ]
                  }
                  numeric_filter = {
                    operation = [
                      "EQUAL"
                    ]
                    value = {
                      double_value = {
                        value = 9.42
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  string_filter = {
                    case_sensitive = true
                    match_type = [
                      "ENDS_WITH"
                    ]
                    value = "...my_value..."
                  }
                }
              }
            ]
          }
          filter = {
            field_name = "...my_field_name..."
            filter = {
              between_filter = {
                from_value = {
                  double_value = {
                    value = 3.58
                  }
                  int64_value = {
                    value = "...my_value..."
                  }
                }
                to_value = {
                  double_value = {
                    value = 2.3
                  }
                  int64_value = {
                    value = "...my_value..."
                  }
                }
              }
              in_list_filter = {
                case_sensitive = false
                values = [
                  "..."
                ]
              }
              numeric_filter = {
                operation = [
                  "LESS_THAN"
                ]
                value = {
                  double_value = {
                    value = 4.2
                  }
                  int64_value = {
                    value = "...my_value..."
                  }
                }
              }
              string_filter = {
                case_sensitive = false
                match_type = [
                  "MATCH_TYPE_UNSPECIFIED"
                ]
                value = "...my_value..."
              }
            }
          }
          not_expression = {
            expression = {
              field_name = "...my_field_name..."
              filter = {
                between_filter = {
                  from_value = {
                    double_value = {
                      value = 4.38
                    }
                    int64_value = {
                      value = "...my_value..."
                    }
                  }
                  to_value = {
                    double_value = {
                      value = 6.08
                    }
                    int64_value = {
                      value = "...my_value..."
                    }
                  }
                }
                in_list_filter = {
                  case_sensitive = false
                  values = [
                    "..."
                  ]
                }
                numeric_filter = {
                  operation = [
                    "LESS_THAN_OR_EQUAL"
                  ]
                  value = {
                    double_value = {
                      value = 6.25
                    }
                    int64_value = {
                      value = "...my_value..."
                    }
                  }
                }
                string_filter = {
                  case_sensitive = true
                  match_type = [
                    "EXACT"
                  ]
                  value = "...my_value..."
                }
              }
            }
          }
          or_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  between_filter = {
                    from_value = {
                      double_value = {
                        value = 8.38
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 7.39
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  in_list_filter = {
                    case_sensitive = true
                    values = [
                      "..."
                    ]
                  }
                  numeric_filter = {
                    operation = [
                      "OPERATION_UNSPECIFIED"
                    ]
                    value = {
                      double_value = {
                        value = 4.14
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  string_filter = {
                    case_sensitive = false
                    match_type = [
                      "PARTIAL_REGEXP"
                    ]
                    value = "...my_value..."
                  }
                }
              }
            ]
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
                  between_filter = {
                    from_value = {
                      double_value = {
                        value = 4.29
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 7.92
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  in_list_filter = {
                    case_sensitive = true
                    values = [
                      "..."
                    ]
                  }
                  numeric_filter = {
                    operation = [
                      "OPERATION_UNSPECIFIED"
                    ]
                    value = {
                      double_value = {
                        value = 1.05
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
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
          filter = {
            field_name = "...my_field_name..."
            filter = {
              between_filter = {
                from_value = {
                  double_value = {
                    value = 0.83
                  }
                  int64_value = {
                    value = "...my_value..."
                  }
                }
                to_value = {
                  double_value = {
                    value = 8.31
                  }
                  int64_value = {
                    value = "...my_value..."
                  }
                }
              }
              in_list_filter = {
                case_sensitive = false
                values = [
                  "..."
                ]
              }
              numeric_filter = {
                operation = [
                  "GREATER_THAN"
                ]
                value = {
                  double_value = {
                    value = 3.27
                  }
                  int64_value = {
                    value = "...my_value..."
                  }
                }
              }
              string_filter = {
                case_sensitive = false
                match_type = [
                  "FULL_REGEXP"
                ]
                value = "...my_value..."
              }
            }
          }
          not_expression = {
            expression = {
              field_name = "...my_field_name..."
              filter = {
                between_filter = {
                  from_value = {
                    double_value = {
                      value = 3.56
                    }
                    int64_value = {
                      value = "...my_value..."
                    }
                  }
                  to_value = {
                    double_value = {
                      value = 4.97
                    }
                    int64_value = {
                      value = "...my_value..."
                    }
                  }
                }
                in_list_filter = {
                  case_sensitive = false
                  values = [
                    "..."
                  ]
                }
                numeric_filter = {
                  operation = [
                    "GREATER_THAN"
                  ]
                  value = {
                    double_value = {
                      value = 2.44
                    }
                    int64_value = {
                      value = "...my_value..."
                    }
                  }
                }
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
          or_group = {
            expressions = [
              {
                field_name = "...my_field_name..."
                filter = {
                  between_filter = {
                    from_value = {
                      double_value = {
                        value = 0.81
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                    to_value = {
                      double_value = {
                        value = 7.24
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  in_list_filter = {
                    case_sensitive = false
                    values = [
                      "..."
                    ]
                  }
                  numeric_filter = {
                    operation = [
                      "GREATER_THAN_OR_EQUAL"
                    ]
                    value = {
                      double_value = {
                        value = 0.63
                      }
                      int64_value = {
                        value = "...my_value..."
                      }
                    }
                  }
                  string_filter = {
                    case_sensitive = false
                    match_type = [
                      "FULL_REGEXP"
                    ]
                    value = "...my_value..."
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
    date_ranges_start_date = "2021-01-01"
    keep_empty_rows        = false
    lookback_window        = 2
    property_ids = [
      "..."
    ]
    window_in_days = 30
  }
  definition_id = "7802af8f-5c6f-48ec-9d74-596e4bdcf24c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "78e7637d-eb31-40e9-8ac3-f8953ca23ae1"
}