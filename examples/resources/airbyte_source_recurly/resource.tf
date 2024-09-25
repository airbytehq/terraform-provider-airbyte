resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "98fe3f92-c06a-49aa-b270-2875abb88c39"
  name          = "Marcos Kuhic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "66080f3e-cae3-4cb4-91ea-7992cd63d338"
}