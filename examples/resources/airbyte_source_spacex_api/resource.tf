resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "e45dfad9-324f-46ab-9f83-34526eae71eb"
    options = "...my_options..."
  }
  definition_id = "759d7dd0-bf2f-4572-9957-8fbbe9226a95"
  name          = "Elisa Wunsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3d12e392-ce90-4b91-a9fb-30db2efb21ef"
}