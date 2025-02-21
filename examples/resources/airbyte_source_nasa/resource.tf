resource "airbyte_source_nasa" "my_source_nasa" {
  configuration = {
    api_key      = "...my_api_key..."
    concept_tags = false
    count        = 93
    end_date     = "2022-10-20"
    start_date   = "2022-10-20"
    thumbs       = false
  }
  definition_id = "93590b9d-1655-48aa-8785-d58907260d78"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ecbeb7a-01f7-4d75-abde-9e3c07f8aaf8"
}