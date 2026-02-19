# Using the connector_configuration data source (recommended)
data "airbyte_connector_configuration" "bigquery" {
  connector_name    = "destination-bigquery"
  connector_version = "2.9.4"

  configuration = {
    project_id       = "my-gcp-project"
    dataset_id       = "my_dataset"
    dataset_location = "US"
    loading_method = {
      method = "GCS Staging"
      gcs_bucket_name = "my-staging-bucket"
      gcs_bucket_path = "airbyte-staging"
    }
  }

  configuration_secrets = {
    credentials_json = var.bigquery_credentials
  }
}

resource "airbyte_destination" "bigquery" {
  name          = "BigQuery Production"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.bigquery.definition_id
  configuration = data.airbyte_connector_configuration.bigquery.configuration_json
}

# Using inline JSON configuration
resource "airbyte_destination" "s3" {
  name          = "S3 Data Lake"
  workspace_id  = var.workspace_id
  definition_id = "4816b78f-1489-44c1-9060-4b19d5fa9571"

  configuration = jsonencode({
    s3_bucket_name   = "my-data-lake"
    s3_bucket_path   = "airbyte"
    s3_bucket_region = "us-east-1"
    access_key_id    = var.aws_access_key
    secret_access_key = var.aws_secret_key
    format = {
      format_type = "Parquet"
    }
  })
}

# Migrating from a typed resource using 'moved' (Terraform >= 1.8)
moved {
  from = airbyte_destination_bigquery.my_dest
  to   = airbyte_destination.my_dest
}

resource "airbyte_destination" "my_dest" {
  name          = "BigQuery"
  workspace_id  = var.workspace_id
  definition_id = "22f6c74f-5699-40ff-833c-4a879ea40133"

  configuration = jsonencode({
    project_id       = "my-gcp-project"
    dataset_id       = "my_dataset"
    dataset_location = "US"
    credentials_json = var.bigquery_credentials
  })
}
