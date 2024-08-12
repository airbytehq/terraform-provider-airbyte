resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 5
    }
    domain = "...my_domain..."
    port   = 5
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "eae086e3-c2d3-4308-aab8-40e56112c1fd"
  name          = "Mr. Kenneth Corkery"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5cfbec28-7654-4f12-bc84-028fbb0cddcf"
}