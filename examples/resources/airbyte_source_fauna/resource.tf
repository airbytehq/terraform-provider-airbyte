resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 5
    }
    domain = "...my_domain..."
    port   = 7
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  name         = "Sherri Ruecker"
  secret_id    = "...my_secret_id..."
  workspace_id = "e6b85628-652e-40ff-83c2-1b517b16f1f8"
}