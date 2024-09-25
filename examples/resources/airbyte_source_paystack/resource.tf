resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 6
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "bb338974-cd0d-4539-af23-19a6f8898d74"
  name          = "Ron Runte III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "70b63c63-3751-4f6c-944c-20e73f23dc46"
}