resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    api_key = "a very long hex sequence"
    site_id = "a relatively long hex sequence"
  }
  definition_id = "9d7dd0bf-2f57-4219-978f-bbe9226a954f"
  name          = "Cary Mitchell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "12e392ce-90b9-4169-bb30-db2efb21ef2b"
}