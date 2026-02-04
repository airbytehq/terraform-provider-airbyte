resource "airbyte_source_db2" "my_source_db2" {
  configuration = {
    db = "default"
    encryption = {
      tls_encrypted_verify_certificate = {
        key_store_password = "...my_key_store_password..."
        ssl_certificate    = "...my_ssl_certificate..."
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    username        = "...my_username..."
  }
  definition_id = "12ecc78f-73de-4e6c-b4e0-8b7212cfcf1f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fa8327c1-44b2-4755-94bd-ac49d20afaba"
}