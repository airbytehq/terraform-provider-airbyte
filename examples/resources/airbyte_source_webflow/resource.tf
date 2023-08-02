resource "airbyte_source_webflow" "my_source_webflow" {
  configuration = {
    api_key     = "a very long hex sequence"
    site_id     = "a relatively long hex sequence"
    source_type = "webflow"
  }
  name         = "Ms. Nina Fadel"
  secret_id    = "...my_secretId..."
  workspace_id = "3d42e54a-8546-4659-bc50-233c1471d51a"
}