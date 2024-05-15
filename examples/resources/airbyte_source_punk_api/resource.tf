resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
  }
  definition_id = "9631ebca-faa2-4ee7-a1e0-cb6197095b91"
  name          = "Justin Cummerata Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0f09eb70-6bb0-416e-a0ac-6bfae2b40c17"
}