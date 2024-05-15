resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "08c82dc4-0ca1-4ab7-a639-716f1b8331df"
  name          = "Bonnie Heidenreich II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4586c7cd-fb55-48f8-b809-d3d1fcf2b675"
}