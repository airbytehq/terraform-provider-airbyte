resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-07-08"
    url        = "...my_url..."
  }
  definition_id = "dec4e3ea-b02c-4cb9-8852-3df16a0cc499"
  name          = "Margarita Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "682b0a70-74f0-416f-b212-7f33f8652b25"
}