resource "airbyte_source_hibob" "my_source_hibob" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    is_sandbox            = false
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "4dc991ed-3dcc-4c40-ac28-9402836709f1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fad87a38-16bf-4b23-be0b-8a294896c8f0"
}