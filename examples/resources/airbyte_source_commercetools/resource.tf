resource "airbyte_source_commercetools" "my_source_commercetools" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    host                  = "aws"
    project_key           = "...my_project_key..."
    region                = "us-central1"
    start_date            = "2021-07-17"
  }
  definition_id = "7f15d767-0ec4-49ac-a291-65b807917306"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "34421eb7-ff14-4db5-9d9c-24ac0e619911"
}