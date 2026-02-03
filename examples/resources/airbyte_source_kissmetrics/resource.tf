resource "airbyte_source_kissmetrics" "my_source_kissmetrics" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "88277b89-b27b-4fae-a686-12546ce04aae"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "39dac097-8fa8-4f11-be98-800806555925"
}