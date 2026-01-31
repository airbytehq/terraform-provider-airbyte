resource "airbyte_source_acuity_scheduling" "my_source_acuityscheduling" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    start_date            = "2021-08-01T10:07:47.367Z"
    username              = "...my_username..."
  }
  definition_id = "607ce1c5-f618-476a-8c15-144036e51250"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cdcbb501-8ae0-4387-b9f1-df184d05a7ee"
}