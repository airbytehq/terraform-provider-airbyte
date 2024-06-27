resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "65f64672-3901-4f87-89df-1af8f5013d5d"
  name          = "Robyn Weimann I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b2856e98-a695-40f0-807e-33047d95358a"
}