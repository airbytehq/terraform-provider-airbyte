resource "airbyte_source_sharepoint_enterprise" "my_source_sharepointenterprise" {
  configuration = {
    credentials = {
      authenticate_via_microsoft_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    delivery_method = {
      replicate_permissions_acl = {
        include_identities_stream = false
      }
    }
    folder_path  = "...my_folder_path..."
    search_scope = "ACCESSIBLE_DRIVES"
    site_url     = "...my_site_url..."
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 0
        format = {
          unstructured_document_format = {
            processing = {
              local = {
                # ...
              }
            }
            skip_unprocessable_files = true
            strategy                 = "ocr_only"
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "...my_name..."
        recent_n_files_to_read_for_schema_discovery = 5
        schemaless                                  = true
        validation_policy                           = "Skip Record"
      }
    ]
  }
  definition_id = "e1ac0234-e48a-4ebc-8cb2-3a2a70dda4b9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6601705c-f90e-4b8c-8dda-3faa5bd1ebce"
}