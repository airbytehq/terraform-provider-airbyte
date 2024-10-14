resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date}"
    format = {
      avro_apache_avro = {
        compression_codec = {
          bzip2 = {
            codec = "bzip2"
          }
          deflate = {
            codec             = "Deflate"
            compression_level = 3
          }
          no_compression = {
            codec = "no compression"
          }
          snappy = {
            codec = "snappy"
          }
          xz = {
            codec             = "xz"
            compression_level = 2
          }
          zstandard = {
            codec             = "zstandard"
            compression_level = 0
            include_checksum  = false
          }
        }
        format_type = "Avro"
      }
      csv_comma_separated_values = {
        compression = {
          gzip = {
            compression_type = "GZIP"
          }
          no_compression = {
            compression_type = "No Compression"
          }
        }
        flattening  = "No flattening"
        format_type = "CSV"
      }
      json_lines_newline_delimited_json = {
        compression = {
          gzip = {
            compression_type = "GZIP"
          }
          no_compression = {
            compression_type = "No Compression"
          }
        }
        flattening  = "No flattening"
        format_type = "JSONL"
      }
      parquet_columnar_storage = {
        block_size_mb           = 128
        compression_codec       = "SNAPPY"
        dictionary_encoding     = true
        dictionary_page_size_kb = 1024
        format_type             = "Parquet"
        max_padding_size_mb     = 8
        page_size_kb            = 1024
      }
    }
    role_arn          = "arn:aws:iam::123456789:role/ExternalIdIsYourWorkspaceId"
    s3_bucket_name    = "airbyte_sync"
    s3_bucket_path    = "data_sync/test"
    s3_bucket_region  = "eu-west-1"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "78e0a8ec-be25-40bf-b8ba-093bfe7a6f05"
  name          = "...my_name..."
  workspace_id  = "9842b6c1-e43f-4d6f-90dd-f293538933f0"
}