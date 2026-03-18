resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key            = "...my_access_key..."
    additional_properties = "{ \"see\": \"documentation\" }"
    deployment_url        = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "c332628c-f55c-4017-8222-378cfafda9b2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6352d97e-2166-4d0d-a165-69ad4eb4a6e3"
}