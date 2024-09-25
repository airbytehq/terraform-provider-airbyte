resource "airbyte_source_looker" "my_source_looker" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain        = "looker.clientname.com"
    run_look_ids = [
      "...",
    ]
  }
  definition_id = "d79aa2af-68e0-40dc-9add-47961168b4fa"
  name          = "Rose Jakubowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a48f976-dd11-4df0-9849-375f6227890d"
}