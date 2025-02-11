resource "airbyte_source_pivotal_tracker" "my_source_pivotaltracker" {
  configuration = {
    api_token = "5c054d0de3440452190fdc5d5a04d871"
  }
  definition_id = "b2f71b55-403f-432c-a2ae-48f8fa498a74"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d1368c77-ff58-425b-89ec-59f82c6b10d7"
}