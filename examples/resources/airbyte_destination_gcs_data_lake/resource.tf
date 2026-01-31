resource "airbyte_destination_gcs_data_lake" "my_destination_gcsdatalake" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    catalog_type = {
      polaris_catalog = {
        additional_properties = "{ \"see\": \"documentation\" }"
        catalog_name          = "...my_catalog_name..."
        catalog_type          = "POLARIS"
        client_id             = "abc123clientid"
        client_secret         = "secretkey123"
        server_uri            = "...my_server_uri..."
      }
    }
    gcp_location         = "us"
    gcp_project_id       = "...my_gcp_project_id..."
    gcs_bucket_name      = "...my_gcs_bucket_name..."
    gcs_endpoint         = "...my_gcs_endpoint..."
    main_branch_name     = "...my_main_branch_name..."
    namespace            = "default"
    service_account_json = "...my_service_account_json..."
    warehouse_location   = "gs://your-bucket/path/to/warehouse"
  }
  definition_id = "44550b48-b11d-48e6-8375-1a0c6c8333ab"
  name          = "...my_name..."
  workspace_id  = "bec00b73-1444-4110-9897-31198f7f8847"
}