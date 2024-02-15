resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "68d5fb4b-99e2-4f7d-8283-3c76bbd55f56"
  name          = "Opal Gerlach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e0498ec4-0fd8-4ad9-961a-05c5e889977e"
}