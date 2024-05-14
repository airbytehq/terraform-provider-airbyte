resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "628652e0-ff83-4c21-b517-b16f1f8846bc"
  name          = "Zachary Breitenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "451945c4-3360-4526-ae8a-a3c4f287913b"
}