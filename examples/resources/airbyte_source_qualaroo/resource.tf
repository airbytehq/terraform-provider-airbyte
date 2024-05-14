resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "ff5b31f2-b930-44d3-abf3-2902de61711b"
  name          = "Nelson MacGyver"
  secret_id     = "...my_secret_id..."
  workspace_id  = "24ee80aa-2980-4d84-b13e-bef014dd9af7"
}