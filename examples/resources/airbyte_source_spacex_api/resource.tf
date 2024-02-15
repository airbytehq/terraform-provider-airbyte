resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "cbdb35a9-6cd0-4e48-b1e4-b30469b6ca0b"
    options = "...my_options..."
  }
  definition_id = "303cf017-cd97-4836-bf1b-e7e9b4aabfc5"
  name          = "Mrs. Santos Kuhn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c36bb733-7bf0-4bec-a93a-8ae78e1e537d"
}