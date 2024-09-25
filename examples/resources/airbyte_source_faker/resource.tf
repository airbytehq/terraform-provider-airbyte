resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = true
    count             = 8
    parallelism       = 2
    records_per_slice = 0
    seed              = 0
  }
  definition_id = "34e58876-cb03-40a1-a8ae-06a57c7c577a"
  name          = "Joe Weber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "addd2747-bbc7-4f24-9709-ce4fe165bc48"
}