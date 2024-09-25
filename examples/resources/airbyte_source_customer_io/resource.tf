resource "airbyte_source_customer_io" "my_source_customerio" {
  configuration = {
    app_api_key = "...my_app_api_key..."
  }
  definition_id = "d4c70b58-82c8-481a-8878-bfdf7e2fa4a6"
  name          = "Lucy Christiansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "34bba48e-d6d0-4eaf-bf54-c7c369f9cb0a"
}