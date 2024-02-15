resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "fd6e7ec4-8816-4b0c-a2b8-975147c3e6c8"
  name          = "Drew Bosco"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cad3b1c4-0652-4931-9364-8ca783b58652"
}