resource "airbyte_destination_gcs" "my_destination_gcs" {
  configuration = {
    credential = {
      hmac_key = {
        credential_type    = "HMAC_KEY"
        hmac_key_access_id = "1234567890abcdefghij1234"
        hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
      }
    }
    format = {
      avro_apache_avro = {
        compression_codec = {
          bzip2 = {
            codec = "bzip2"
          }
          deflate = {
            codec             = "Deflate"
            compression_level = 8
          }
          no_compression = {
            codec = "no compression"
          }
          snappy = {
            codec = "snappy"
          }
          xz = {
            codec             = "xz"
            compression_level = 7
          }
          zstandard = {
            codec             = "zstandard"
            compression_level = 22
            include_checksum  = true
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
        flattening  = "Root level flattening"
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
        format_type = "JSONL"
      }
      parquet_columnar_storage = {
        block_size_mb           = 128
        compression_codec       = "LZ4"
        dictionary_encoding     = false
        dictionary_page_size_kb = 1024
        format_type             = "Parquet"
        max_padding_size_mb     = 8
        page_size_kb            = 1024
      }
    }
    gcs_bucket_name   = "airbyte_sync"
    gcs_bucket_path   = "data_sync/test"
    gcs_bucket_region = "australia-southeast2"
  }
  definition_id = "fbdeaa3f-58d4-41ca-a298-54ecee1615a0"
  name          = "...my_name..."
  workspace_id  = "0ffee906-5986-410b-95a7-80c6f12aeac3"
}