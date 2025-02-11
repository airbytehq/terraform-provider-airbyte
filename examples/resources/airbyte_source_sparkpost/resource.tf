resource "airbyte_source_sparkpost" "my_source_sparkpost" {
  configuration = {
    api_key    = "...my_api_key..."
    api_prefix = "api.eu"
    start_date = "2022-11-27T16:25:03.643Z"
  }
  definition_id = "bdc9ec63-cec9-4526-80d5-4e1bbf3f5b01"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a3ae1fda-6319-4bc7-b12e-cbef062528be"
}