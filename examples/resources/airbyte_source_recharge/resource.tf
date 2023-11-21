resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2021-05-14T00:00:00Z"
  }
  definition_id = "427992f6-5a71-405f-ae57-0ad372ede129"
  name          = "Hugo Hagenes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1410fd6e-7ec4-4881-ab0c-62b8975147c3"
}