resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "811786e4-4e52-472c-a097-1d544a65a7d2"
  name          = "Miss Herbert Kerluke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ec6467c-968c-4ce9-b394-d8a35db32f90"
}