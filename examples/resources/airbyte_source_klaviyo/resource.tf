resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "7f387c53-022b-4a4a-ad29-95c663b6d13c"
  name          = "Jenna DuBuque"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b93bd413-d75c-4669-ba6b-92ef16650e4c"
}