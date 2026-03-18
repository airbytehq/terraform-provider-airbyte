resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    api_secret            = "...my_api_secret..."
    shop                  = "...my_shop..."
    start_date            = "2021-01-01"
  }
  definition_id = "2a2552ca-9f78-4c1c-9eb7-4d0dc66d72df"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "820ccea2-91c4-433d-bca2-ae97f9986afe"
}