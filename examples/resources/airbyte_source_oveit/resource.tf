resource "airbyte_source_oveit" "my_source_oveit" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    email                 = "...my_email..."
    password              = "...my_password..."
  }
  definition_id = "3f1f39c2-fa3b-4b58-810f-a1466dbe4d0a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "23c928b3-5ef2-4a63-afa0-b1d422c4dc7d"
}