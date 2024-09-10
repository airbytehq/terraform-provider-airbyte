resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  definition_id = "54f47827-40a2-4b5a-8624-28ebc5c77ead"
  name          = "Kenneth Rutherford"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e16ebe85-fa64-4aee-8d2b-de48eefceb9e"
}