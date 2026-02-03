resource "airbyte_destination_customer_io" "my_destination_customerio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      additional_properties = "{ \"see\": \"documentation\" }"
      api_key               = "...my_api_key..."
      site_id               = "...my_site_id..."
    }
    object_storage_config = {
      s3 = {
        access_key_id         = "A012345678910EXAMPLE"
        additional_properties = "{ \"see\": \"documentation\" }"
        bucket_path           = "prefix/"
        compression = {
          gzip = {
            additional_properties = "{ \"see\": \"documentation\" }"
            compression_type      = "GZIP"
          }
          no_compression = {
            additional_properties = "{ \"see\": \"documentation\" }"
            compression_type      = "No Compression"
          }
        }
        file_name_format = "{date}"
        format = {
          # ...
        }
        path_format       = "{namespace}/{stream_name}/{year}_{month}_{day}_{epoch}"
        role_arn          = "arn:aws:iam::123456789:role/ExternalIdIsYourWorkspaceId"
        s3_bucket_name    = "airbyte_sync"
        s3_bucket_region  = "us-east-1"
        s3_endpoint       = "http://localhost:9000"
        secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
        storage_type      = "S3"
      }
    }
  }
  definition_id = "12743f4f-ea98-4109-9d05-18859be53415"
  name          = "...my_name..."
  workspace_id  = "f9c4abcb-f416-4457-ac07-42eaeab54509"
}