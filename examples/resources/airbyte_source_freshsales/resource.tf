resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "4a63623e-34bb-4a48-ad6d-0eaf7f54c7c3"
  name          = "Shelly Wolf"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b0a3dd00-07da-4ef7-b0c8-1f95c5b8dd2d"
}