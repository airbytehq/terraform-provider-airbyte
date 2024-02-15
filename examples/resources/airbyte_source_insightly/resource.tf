resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "be57bfa4-6127-4442-b75e-d08074e17a64"
  name          = "Clayton Herman Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab94fe75-a513-4e00-9777-93827c06dd86"
}