resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      username_password = {
        password = "...my_password..."
        username = "...my_username..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    upsert         = false
  }
  definition_id = "fa3d17d3-6d2d-4bd3-a934-fcd7370e225f"
  name          = "...my_name..."
  workspace_id  = "9de55ce7-1e79-4018-9818-c9bf634debae"
}