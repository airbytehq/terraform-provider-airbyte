resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = false
    count             = 6
    parallelism       = 10
    records_per_slice = 7
    seed              = 9
  }
  name         = "Kerry Hickle"
  secret_id    = "...my_secret_id..."
  workspace_id = "690efc6e-828b-41d2-9db5-daa9ea927cae"
}