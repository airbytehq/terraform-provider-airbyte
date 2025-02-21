resource "airbyte_source_oura" "my_source_oura" {
  configuration = {
    api_key        = "...my_api_key..."
    end_datetime   = "2021-08-11T14:00:50.125Z"
    start_datetime = "2022-03-09T16:41:24.155Z"
  }
  definition_id = "77777d89-8f68-4560-b7a4-09d46ff24bfd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "09071079-da12-414f-831c-81f7704638a8"
}