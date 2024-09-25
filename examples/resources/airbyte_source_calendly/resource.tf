resource "airbyte_source_calendly" "my_source_calendly" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-09-22T09:32:58.921Z"
  }
  definition_id = "5775fcbb-81a7-4466-bf78-b3b7dede547f"
  name          = "Miss Lonnie Schaden"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53c35168-9ddb-43b3-9740-139dc2cf2cb4"
}