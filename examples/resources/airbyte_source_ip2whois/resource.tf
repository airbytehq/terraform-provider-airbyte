resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.facebook.com"
  }
  definition_id = "4b875ea1-fa63-4f6c-8fac-1403cfd915cc"
  name          = "Victoria Murazik DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1c37b350-ebb3-4981-889f-963f1e6164cc"
}