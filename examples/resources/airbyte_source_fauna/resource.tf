resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 0
    }
    domain = "...my_domain..."
    port   = 10
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "56112c1f-da02-410a-9cfb-ec287654f12b"
  name          = "Mr. Willard Gislason"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fbb0cddc-f802-4e3e-a016-5466352da9b0"
}