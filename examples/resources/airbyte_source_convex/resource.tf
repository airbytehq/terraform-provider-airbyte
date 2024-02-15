resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "3ac232bf-a41c-480b-a334-5c949a95559f"
  name          = "Lynda Feest"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f680c88d-8e9f-4743-9721-e4227fd51b66"
}