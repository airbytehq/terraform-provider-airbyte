resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "740139dc-2cf2-4cb4-9644-2d85f5b6382e"
  name          = "Ms. Laura Upton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8172f932-271c-49f9-8baa-542e6e080961"
}