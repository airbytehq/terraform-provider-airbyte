resource "airbyte_source_airbyte_victorops_source" "my_source_airbytevictoropssource" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_id                = "...my_api_id..."
    api_key               = "...my_api_key..."
    current_phase         = "...my_current_phase..."
    max_content_length    = 9.74
    page_limit            = 1.76
  }
  definition_id = "26cad5e7-ffbf-463d-9b0a-9150fd2673f6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5f52fe1f-f966-4ea4-84d6-68332414491e"
}