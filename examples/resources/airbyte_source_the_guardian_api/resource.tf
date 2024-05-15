resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "YYYY-MM-DD"
    query      = "amusement park"
    section    = "media"
    start_date = "YYYY-MM-DD"
    tag        = "environment/energyefficiency"
  }
  definition_id = "271a5b00-9f29-4606-a36d-ac99592aaeb2"
  name          = "Estelle Lubowitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3db558d4-aa17-470f-a21a-7b03b315af19"
}