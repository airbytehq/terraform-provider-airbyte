resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id  = "...my_domain_id..."
    secret_key = "...my_secret_key..."
    start_date = "2023-07-30T03:43:59.244Z"
  }
  name         = "Valerie Cronin DDS"
  secret_id    = "...my_secret_id..."
  workspace_id = "b54dff6c-f9b7-49e2-b288-8b6bde25154a"
}