resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-01-15"
    url        = "...my_url..."
  }
  definition_id = "b187d332-23d8-40bb-9936-2d2f45974a2e"
  name          = "Wilson Dicki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0abb376b-ce66-4a7c-8ce2-0da3e9aab714"
}