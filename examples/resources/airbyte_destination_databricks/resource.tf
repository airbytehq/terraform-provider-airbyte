resource "airbyte_destination_databricks" "my_destination_databricks" {
    configuration = {
        accept_terms = false
        data_source =     {
                data_source_type = "MANAGED_TABLES_STORAGE"
            }
        database = "...my_database..."
        databricks_http_path = "sql/protocolvx/o/1234567489/0000-1111111-abcd90"
        databricks_personal_access_token = "dapi0123456789abcdefghij0123456789AB"
        databricks_port = "443"
        databricks_server_hostname = "abc-12345678-wxyz.cloud.databricks.com"
        destination_type = "databricks"
        purge_staging_data = true
        schema = "default"
    }
            name = "Joanna Kohler"
            workspace_id = "29cdb1a8-422b-4b67-9d23-22715bf0cbb1"
        }