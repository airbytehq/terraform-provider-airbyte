resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    source_type                           = "bamboo-hr"
    subdomain                             = "...my_subdomain..."
  }
  name         = "Mandy Collier"
  secret_id    = "...my_secret_id..."
  workspace_id = "da7e23f2-2574-411f-af4b-7544e472e802"
}