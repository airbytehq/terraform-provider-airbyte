resource "airbyte_source_serpstat" "my_source_serpstat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain                = "...my_domain..."
    domains = [
      "{ \"see\": \"documentation\" }"
    ]
    filter_by      = "...my_filter_by..."
    filter_value   = "...my_filter_value..."
    page_size      = 0
    pages_to_fetch = 5
    region_id      = "...my_region_id..."
    sort_by        = "...my_sort_by..."
    sort_value     = "...my_sort_value..."
  }
  definition_id = "d053b361-0135-4fe9-a99e-37ce6ddcd0f0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5d8f700d-5d91-4270-a3d2-4196dea7e14e"
}