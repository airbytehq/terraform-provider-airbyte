resource "airbyte_source_buildkite" "my_source_buildkite" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-09-13T08:37:58.641Z"
  }
  definition_id = "4f66cbf0-e9a0-45e9-94ac-e41dc5b42f2a"
  name          = "Beverly Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8647f2d4-2750-4604-ac1c-65661b2485a0"
}