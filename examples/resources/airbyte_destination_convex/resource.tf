resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "e573c0eb-8223-4613-923c-e875293aec4a"
  name          = "Miss Peter Abernathy"
  workspace_id  = "23922581-a884-452d-a7c3-5eb92a9e952d"
}