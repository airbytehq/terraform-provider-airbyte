resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2020-07-22"
    url        = "...my_url..."
  }
  definition_id = "d80ba5ff-53c6-4fc1-8ca6-7a827c3d349f"
  name          = "Bertha Hagenes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a8589d84-94dc-4fae-a550-03801e9f4469"
}