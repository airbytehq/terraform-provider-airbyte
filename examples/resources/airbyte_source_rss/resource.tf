resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "3ae3912e-d084-430e-a194-5302c197910f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7991457f-abf1-481b-ae5a-f5dbbfea1c0b"
}