resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
  }
  definition_id = "1133ddb2-a959-437c-ad00-62e7b59a4e78"
  name          = "Lauren Crooks"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d266e4c1-2d05-4e7f-98d4-a0625cbff5b3"
}