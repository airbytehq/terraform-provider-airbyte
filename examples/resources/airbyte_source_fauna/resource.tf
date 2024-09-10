resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 8
    }
    domain = "...my_domain..."
    port   = 3
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "9c686900-5174-4142-9e4d-38a30ea56cdf"
  name          = "Todd Kuhlman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f6225b4b-ae61-4112-a113-e87b490ecc6b"
}