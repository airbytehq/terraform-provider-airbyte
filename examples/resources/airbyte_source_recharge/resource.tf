resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "recharge"
    start_date   = "2021-05-14T00:00:00Z"
  }
  name         = "Karen Green"
  secret_id    = "...my_secret_id..."
  workspace_id = "bebbad02-f258-46bc-b152-558daa95be6c"
}