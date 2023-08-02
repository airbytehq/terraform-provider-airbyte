resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "recharge"
    start_date   = "2021-05-14T00:00:00Z"
  }
  name         = "Dr. Beatrice Keeling"
  workspace_id = "a16ef894-51bd-476e-aeb5-18c4da1fad35"
}