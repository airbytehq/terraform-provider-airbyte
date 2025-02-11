resource "airbyte_destination_s3_data_lake" "my_destination_s3datalake" {
  configuration = {
    access_key_id = "...my_access_key_id..."
    catalog_type = {
      glue_catalog = {
        additional_properties = "{ \"see\": \"documentation\" }"
        catalog_type          = "GLUE"
        database_name         = "...my_database_name..."
        glue_id               = "...my_glue_id..."
        role_arn              = "...my_role_arn..."
      }
      nessie_catalog = {
        access_token          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
        additional_properties = "{ \"see\": \"documentation\" }"
        catalog_type          = "NESSIE"
        namespace             = "...my_namespace..."
        server_uri            = "...my_server_uri..."
      }
      rest_catalog = {
        additional_properties = "{ \"see\": \"documentation\" }"
        catalog_type          = "REST"
        namespace             = "...my_namespace..."
        server_uri            = "...my_server_uri..."
      }
    }
    main_branch_name   = "...my_main_branch_name..."
    s3_bucket_name     = "...my_s3_bucket_name..."
    s3_bucket_region   = "us-east-1"
    s3_endpoint        = "...my_s3_endpoint..."
    secret_access_key  = "...my_secret_access_key..."
    warehouse_location = "s3://your-bucket/path/to/store/files/in"
  }
  definition_id = "9e400343-02b2-4662-a6e6-e0fa14a75ce6"
  name          = "...my_name..."
  workspace_id  = "a727b820-bb79-42a8-8bb5-a8f3c4e0696b"
}