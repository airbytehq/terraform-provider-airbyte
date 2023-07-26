resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey      = "...my_apikey..."
    source_type = "sendgrid"
    start_time  = "2020-01-01T01:01:01Z"
  }
  name         = "Mr. Iris Pfannerstill PhD"
  workspace_id = "9aac2e91-3558-46d1-8f9f-97a4bfad2bf7"
}