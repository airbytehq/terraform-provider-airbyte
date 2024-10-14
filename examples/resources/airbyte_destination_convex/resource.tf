resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "ecdd0a64-9bfa-4ec1-81e5-5ae9a4e94cf7"
  name          = "...my_name..."
  workspace_id  = "c753766d-fb7a-4ec8-a514-3a8d07d6f56b"
}