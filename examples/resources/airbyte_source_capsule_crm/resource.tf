resource "airbyte_source_capsule_crm" "my_source_capsulecrm" {
  configuration = {
    bearer_token = "...my_bearer_token..."
    entity       = "kases"
    start_date   = "2022-04-29T18:37:17.501Z"
  }
  definition_id = "e25f8f72-b58a-4fbe-94d1-7cb757149983"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5d45249b-9315-4851-8b0a-0868a4855d0f"
}