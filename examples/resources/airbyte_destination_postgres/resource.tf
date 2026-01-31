resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    cdc_deletion_mode     = "Soft delete"
    database              = "...my_database..."
    disable_type_dedupe   = true
    drop_cascade          = false
    host                  = "...my_host..."
    jdbc_url_params       = "...my_jdbc_url_params..."
    password              = "...my_password..."
    port                  = 5432
    raw_data_schema       = "...my_raw_data_schema..."
    schema                = "public"
    ssl                   = true
    ssl_mode = {
      verify_ca = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ca_certificate        = "...my_ca_certificate..."
        client_key_password   = "...my_client_key_password..."
        mode                  = "verify-ca"
      }
    }
    tunnel_method = {
      password_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_PASSWORD_AUTH"
        tunnel_port           = 28502
        tunnel_user           = "...my_tunnel_user..."
        tunnel_user_password  = "...my_tunnel_user_password..."
      }
    }
    unconstrained_number = false
    username             = "...my_username..."
  }
  definition_id = "6cc561e7-8b38-4621-919b-0687fe3682b7"
  name          = "...my_name..."
  workspace_id  = "2b2d880a-23fd-4463-8627-0a837b28bb7e"
}