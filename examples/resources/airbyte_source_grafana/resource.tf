resource "airbyte_source_grafana" "my_source_grafana" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    url                   = "...my_url..."
  }
  definition_id = "d938749f-e29b-4949-b669-583b7e68e5ec"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e8ddf47-d9f5-4d44-ba81-76342bae75f2"
}