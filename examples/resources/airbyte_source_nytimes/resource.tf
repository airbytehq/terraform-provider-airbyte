resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "1851-01"
    period     = "1"
    share_type = "facebook"
    start_date = "2022-08"
  }
  definition_id = "407ce310-da76-4331-90ac-fec241f73646"
  name          = "Albert Ryan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9583a59a-8255-4310-9401-78456a4c1173"
}