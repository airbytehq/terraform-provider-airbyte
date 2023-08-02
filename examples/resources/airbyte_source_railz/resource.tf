resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id   = "...my_client_id..."
    secret_key  = "...my_secret_key..."
    source_type = "railz"
    start_date  = "...my_start_date..."
  }
  name         = "Olivia Kuvalis"
  workspace_id = "99731adc-05d8-45ae-adfb-70fb3874290d"
}