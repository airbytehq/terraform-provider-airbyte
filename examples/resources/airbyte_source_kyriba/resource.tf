resource "airbyte_source_kyriba" "my_source_kyriba" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain                = "demo.kyriba.com"
    end_date              = "2022-03-01"
    password              = "...my_password..."
    start_date            = "2021-01-10"
    username              = "...my_username..."
  }
  definition_id = "4eeba952-2d27-4162-9e51-e03f8c1502a8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "38f50c3d-9c25-4f58-afa9-cd7dbf3e5fd1"
}