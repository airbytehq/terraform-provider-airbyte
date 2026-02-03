resource "airbyte_source_pipeliner" "my_source_pipeliner" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    service               = "ap-southeast"
    spaceid               = "...my_spaceid..."
    username              = "...my_username..."
  }
  definition_id = "b6c09809-22df-4ede-88d5-8ab3e9bf52fb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "49c4635f-8f20-48b6-8f83-97b1f7a449ea"
}