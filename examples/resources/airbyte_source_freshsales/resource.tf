resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "07daef77-0c81-4f95-85b8-dd2d32b37f6f"
  name          = "Wilbert Hettinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0a4fda52-f695-443b-8620-d9bb50480aaa"
}