resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 1
  }
  definition_id = "001e515b-2e74-4052-aa67-dad65e8ae1d2"
  name          = "Dr. Bessie Rolfson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "be7d2d34-33ea-4862-b99c-ad5c4b833469"
}