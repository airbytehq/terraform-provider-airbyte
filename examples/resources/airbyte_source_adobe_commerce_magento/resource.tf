resource "airbyte_source_adobe_commerce_magento" "my_source_adobecommercemagento" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    api_version           = "...my_api_version..."
    start_date            = "2022-07-30T06:54:30.794Z"
    store_host            = "...my_store_host..."
  }
  definition_id = "a09fa51c-b4c0-43f7-87ce-8df9aad7fb93"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c7b142f0-8753-42e0-91c1-f4e167376f49"
}