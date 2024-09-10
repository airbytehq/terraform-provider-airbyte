resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    include_closed_tasks = true
  }
  definition_id = "506042c1-c656-461b-a485-a060238eba13"
  name          = "Joyce Shields"
  secret_id     = "...my_secret_id..."
  workspace_id  = "00cfe1ba-68d3-4405-82b9-6029febd39e6"
}