resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      access_token = "...my_access_token..."
      credentials  = "access_token"
    }
    source_type = "zendesk-chat"
    start_date  = "2021-02-01T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Percy Hane"
  workspace_id = "5f0c492b-5744-4d08-a226-7aaee79e3c71"
}