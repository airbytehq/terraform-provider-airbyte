resource "airbyte_source_pennylane" "my_source_pennylane" {
  configuration = {
    api_key    = "...my_api_key..."
    start_time = "2021-06-03T08:32:57.060Z"
  }
  definition_id = "de6b6c68-8e04-4edf-a164-38f873c25347"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "68c0608d-791c-40e1-afa5-c0f0594a51ec"
}