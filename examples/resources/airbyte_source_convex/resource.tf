resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
    source_type    = "convex"
  }
  name         = "Guy Kovacek"
  secret_id    = "...my_secret_id..."
  workspace_id = "a8581a58-208c-454f-afa9-c95f2eac5565"
}